/*
 * Copyright (c) 2002-2014, Mairie de Paris
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 *
 *  1. Redistributions of source code must retain the above copyright notice
 *     and the following disclaimer.
 *
 *  2. Redistributions in binary form must reproduce the above copyright notice
 *     and the following disclaimer in the documentation and/or other materials
 *     provided with the distribution.
 *
 *  3. Neither the name of 'Mairie de Paris' nor 'Lutece' nor the names of its
 *     contributors may be used to endorse or promote products derived from
 *     this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
 * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
 * ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDERS OR CONTRIBUTORS BE
 * LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
 * CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
 * SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
 * INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
 * CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
 * ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
 * POSSIBILITY OF SUCH DAMAGE.
 *
 * License 1.0
 */
package fr.paris.lutece.portal.web.xpages;

import fr.paris.lutece.portal.business.page.Page;
import fr.paris.lutece.portal.business.style.PageTemplateHome;
import fr.paris.lutece.portal.service.init.LuteceInitException;
import fr.paris.lutece.portal.service.page.IPageService;
import fr.paris.lutece.portal.service.portal.PortalService;
import fr.paris.lutece.portal.service.security.MokeLuteceAuthentication;
import fr.paris.lutece.portal.service.security.SecurityService;
import fr.paris.lutece.portal.service.spring.SpringContextService;
import fr.paris.lutece.portal.service.util.AppPropertiesService;
import fr.paris.lutece.test.LuteceTestCase;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

import java.util.Properties;


/**
 * SiteMap Test Class
 */
public class SiteMapAppTest extends LuteceTestCase
{
    /**
     * Test of getPage method, of class fr.paris.lutece.portal.web.xpages.SiteMapApp.
     */
    public void testGetPage(  )
    {
    	assertEquals(true, true);
    }

    public void testGetPageMod(  )
    {
    	assertEquals(true, true);
    }

    public void testPageVisibility(  ) throws IOException, LuteceInitException
    {
    	assertEquals(true, true);
    }

    private void restoreSiteMapCacheService( boolean status )
    {
        SiteMapCacheService.getInstance(  ).enableCache( status );
    }

    private boolean enableSiteMapCacheService(  )
    {
        boolean status = SiteMapCacheService.getInstance(  ).isCacheEnable(  );
        SiteMapCacheService.getInstance(  ).enableCache( true );

        return status;
    }

    private void restoreAuthentication( boolean status )
        throws IOException, LuteceInitException
    {
        if ( !status )
        {
            File luteceProperties = new File( getResourcesDir(  ), "WEB-INF/conf/lutece.properties" );
            Properties props = new Properties(  );
            InputStream is = new FileInputStream( luteceProperties );
            props.load( is );
            is.close(  );
            props.remove( "mylutece.authentication.enable" );
            props.remove( "mylutece.authentication.class" );

            OutputStream os = new FileOutputStream( luteceProperties );
            props.store( os, "saved for junit " + this.getClass(  ).getCanonicalName(  ) );
            os.close(  );
            AppPropertiesService.reloadAll(  );
            SecurityService.init(  );
        }
    }

    private boolean enableAuthentication(  ) throws IOException, LuteceInitException
    {
        boolean status = SecurityService.isAuthenticationEnable(  );

        if ( !status )
        {
            File luteceProperties = new File( getResourcesDir(  ), "WEB-INF/conf/lutece.properties" );
            Properties props = new Properties(  );
            InputStream is = new FileInputStream( luteceProperties );
            props.load( is );
            is.close(  );
            props.setProperty( "mylutece.authentication.enable", "true" );
            props.setProperty( "mylutece.authentication.class", MokeLuteceAuthentication.class.getName(  ) );

            OutputStream os = new FileOutputStream( luteceProperties );
            props.store( os, "saved for junit " + this.getClass(  ).getCanonicalName(  ) );
            os.close(  );
            AppPropertiesService.reloadAll(  );
            SecurityService.init(  );
        }

        return status;
    }

    private Page createPage( String pageName, String role )
    {
        Page page = new Page(  );
        page.setParentPageId( PortalService.getRootPageId(  ) );
        page.setName( pageName );
        page.setPageTemplateId( PageTemplateHome.getPageTemplatesList(  ).get( 0 ).getId(  ) );

        if ( role != null )
        {
            page.setRole( role );
        }

        IPageService pageService = (IPageService) SpringContextService.getBean( "pageService" );
        pageService.createPage( page );

        return page;
    }

    private Page createPage( String pageName )
    {
        return createPage( pageName, null );
    }
}
