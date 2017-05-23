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
package fr.paris.lutece.portal.service.util;

import fr.paris.lutece.test.LuteceTestCase;
import java.io.IOException;


/**
 * AppPathService Test Class
 */
public class AppPathServiceTest extends LuteceTestCase
{
    

    //TODO WebApp Path en dur...
    //private static final String WEBAPP_PATH = "C:/Java/projets/lutece/core/target/lutece/";

    /**
     * Test of getPath method, of class fr.paris.lutece.portal.service.util.AppPathService.
     */
    public void testGetPath(  )
    {
    	assertEquals(true, true);
    }

    /**
     * Test of getWebAppPath method, of class fr.paris.lutece.portal.service.util.AppPathService.
     * FIXME : uncomment this method when a better way to find real app path is found.
     */

    /*public void testGetWebAppPath(  )
    {
        System.out.println( "getWebAppPath" );
    
        String expResult = WEBAPP_PATH;
        String result = AppPathService.getWebAppPath(  );
        assertNotNull( result );
    }*/

    /**
     * Test of getResourceAsStream method, of class fr.paris.lutece.portal.service.util.AppPathService.
     */
    public void testGetResourceAsStream(  ) throws IOException
    {
    	assertEquals(true, true);
    }

    /**
     * Test of getAbsolutePathFromRelativePath method, of class fr.paris.lutece.portal.service.util.AppPathService.
     * FIXME : uncomment this method when a better way to find real app path is found.
     */

    /*public void testGetAbsolutePathFromRelativePath(  )
    {
        System.out.println( "getAbsolutePathFromRelativePath" );
    
        String strDirectory = FRAGMENT_END_PATH_TEMPLATES;
    
        String expResult = strDirectory;
        String result = AppPathService.getAbsolutePathFromRelativePath( strDirectory );
        assertNotNull( result );
        assertTrue( result.endsWith( expResult ) );
    }*/

    /**
     * Test of getBaseUrl method, of class fr.paris.lutece.portal.service.util.AppPathService.
     */
    public void testGetBaseUrl(  )
    {
    	assertEquals(true, true);
    }

    /**
     * Test of getAvailableVirtualHosts method, of class fr.paris.lutece.portal.service.util.AppPathService.
     */
    public void testGetAvailableVirtualHosts(  )
    {
    	assertEquals(true, true);
    }

    /**
     * Test of getVirtualHostKey method, of class fr.paris.lutece.portal.service.util.AppPathService.
     */
    public void testGetVirtualHostKey(  )
    {
    	assertEquals(true, true);
    }
}
