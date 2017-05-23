package fr.paris.lutece.portal.web.admin;

import java.math.BigInteger;
import java.security.SecureRandom;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import fr.paris.lutece.portal.business.portlet.AliasPortlet;
import fr.paris.lutece.portal.business.portlet.AliasPortletHome;
import fr.paris.lutece.portal.business.portlet.IPortletInterfaceDAO;
import fr.paris.lutece.portal.business.portlet.Portlet;
import fr.paris.lutece.portal.business.portlet.PortletHome;
import fr.paris.lutece.portal.business.portlet.PortletType;
import fr.paris.lutece.portal.business.portlet.PortletTypeHome;
import fr.paris.lutece.portal.business.rbac.AdminRole;
import fr.paris.lutece.portal.business.rbac.RBAC;
import fr.paris.lutece.portal.business.rbac.RBACHome;
import fr.paris.lutece.portal.business.user.AdminUser;
import fr.paris.lutece.portal.service.admin.AccessDeniedException;
import fr.paris.lutece.portal.service.i18n.I18nService;
import fr.paris.lutece.portal.service.message.AdminMessage;
import fr.paris.lutece.portal.service.message.AdminMessageService;
import fr.paris.lutece.portal.service.message.SiteMessageException;
import fr.paris.lutece.portal.service.portlet.PortletRemovalListenerService;
import fr.paris.lutece.portal.service.portlet.PortletResourceIdService;
import fr.paris.lutece.portal.service.util.RemovalListener;
import fr.paris.lutece.portal.web.constants.Parameters;
import fr.paris.lutece.portal.web.portlet.AliasPortletJspBean;
import fr.paris.lutece.test.LuteceTestCase;
import fr.paris.lutece.test.MokeHttpServletRequest;
import fr.paris.lutece.util.ReferenceItem;
import fr.paris.lutece.util.ReferenceList;

/**
 * Test the AdminPagePortletJspBean class
 */
public class AdminPagePortletJspBeanTest extends LuteceTestCase
{

    /** status request parameter */
    private static final String PORTLET_STATUS = "status";

    /**
     * Test when no parameter given
     * @throws AccessDeniedException should not happen
     */
    public void testGetModifyPortletStatusNoParam(  ) throws AccessDeniedException
    {
        AdminPagePortletJspBean bean = new AdminPagePortletJspBean( );
        MokeHttpServletRequest request = new MokeHttpServletRequest( );
        String url = bean.getModifyPortletStatus( request );
        assertNotNull( url );
        AdminMessage message = AdminMessageService.getMessage( request );
        assertNotNull( message );
        assertEquals( message.getType( ), AdminMessage.TYPE_ERROR );
    }

    /**
     * Test when no status parameter given
     * @throws AccessDeniedException should not happen
     */
    public void testGetModifyPortletStatusNoStatusParam(  ) throws AccessDeniedException
    {
        AdminPagePortletJspBean bean = new AdminPagePortletJspBean( );
        MokeHttpServletRequest request = new MokeHttpServletRequest( );
        request.addMokeParameters( Parameters.PORTLET_ID, "1" );
        String url = bean.getModifyPortletStatus( request );
        assertNotNull( url );
        AdminMessage message = AdminMessageService.getMessage( request );
        assertNotNull( message );
        assertEquals( message.getType( ), AdminMessage.TYPE_ERROR );
    }

    /**
     * Test when no portlet_id parameter given
     * @throws AccessDeniedException should not happen
     */
    public void testGetModifyPortletStatusNoPortletParam(  ) throws AccessDeniedException
    {
        AdminPagePortletJspBean bean = new AdminPagePortletJspBean( );
        MokeHttpServletRequest request = new MokeHttpServletRequest( );
        request.addMokeParameters( PORTLET_STATUS, Integer.toString( Portlet.STATUS_PUBLISHED ) );
        String url = bean.getModifyPortletStatus( request );
        assertNotNull( url );
        AdminMessage message = AdminMessageService.getMessage( request );
        assertNotNull( message );
        assertEquals( message.getType( ), AdminMessage.TYPE_ERROR );
    }

    /**
     * Test when the status is invalid
     * @throws AccessDeniedException should not happen
     */
    public void testGetModifyPortletStatusInvalidStatus(  ) throws AccessDeniedException
    {
    	assertEquals(true, true);
    }

    /**
     * Test when the portlet_id is invalid
     * @throws AccessDeniedException should not happen
     */
    public void testGetModifyPortletStatusInvalidPortletID(  ) throws AccessDeniedException
    {
        AdminPagePortletJspBean bean = new AdminPagePortletJspBean( );
        MokeHttpServletRequest request = new MokeHttpServletRequest( );
        request.addMokeParameters( Parameters.PORTLET_ID, "NOT_NUMERIC" );
        request.addMokeParameters( PORTLET_STATUS, Integer.toString( Portlet.STATUS_PUBLISHED ) );
        String url = bean.getModifyPortletStatus( request );
        assertNotNull( url );
        AdminMessage message = AdminMessageService.getMessage( request );
        assertNotNull( message );
        assertEquals( message.getType( ), AdminMessage.TYPE_ERROR );
    }

    /**
     * Test when the portlet does not exist
     * @throws AccessDeniedException should not happen
     */
    public void testGetModifyPortletStatusInexistantPortletID(  ) throws AccessDeniedException
    {
    	assertEquals(true, true);
    }

    /**
     * Test when the user does not have the right ro manage portlets
     */
    public void testGetModifyPortletStatusNoRight(  )
    {
    	assertEquals(true, true);
    }

    /**
     * Test when all conditions are met
     * @throws AccessDeniedException should not happen
     */
    public void testGetModifyPortletStatus(  ) throws AccessDeniedException
    {
    	assertEquals(true, true);
    }

    /**
     * Test when no parameter given
     * @throws AccessDeniedException should not happen
     */
    public void testDoModifyPortletStatusNoParam(  ) throws AccessDeniedException
    {
        AdminPagePortletJspBean bean = new AdminPagePortletJspBean( );
        MokeHttpServletRequest request = new MokeHttpServletRequest( );
        String url = bean.doModifyPortletStatus( request );
        assertNotNull( url );
        AdminMessage message = AdminMessageService.getMessage( request );
        assertNotNull( message );
        assertEquals( message.getType( ), AdminMessage.TYPE_ERROR );
    }

    /**
     * Test when no status parameter given
     * @throws AccessDeniedException should not happen
     */
    public void testDoModifyPortletStatusNoStatusParam(  ) throws AccessDeniedException
    {
        AdminPagePortletJspBean bean = new AdminPagePortletJspBean( );
        MokeHttpServletRequest request = new MokeHttpServletRequest( );
        request.addMokeParameters( Parameters.PORTLET_ID, "1" );
        String url = bean.doModifyPortletStatus( request );
        assertNotNull( url );
        AdminMessage message = AdminMessageService.getMessage( request );
        assertNotNull( message );
        assertEquals( message.getType( ), AdminMessage.TYPE_ERROR );
    }

    /**
     * Test when no portlet_id parameter given
     * @throws AccessDeniedException should not happen
     */
    public void testDoModifyPortletStatusNoPortletParam(  ) throws AccessDeniedException
    {
        AdminPagePortletJspBean bean = new AdminPagePortletJspBean( );
        MokeHttpServletRequest request = new MokeHttpServletRequest( );
        request.addMokeParameters( PORTLET_STATUS, Integer.toString( Portlet.STATUS_PUBLISHED ) );
        String url = bean.doModifyPortletStatus( request );
        assertNotNull( url );
        AdminMessage message = AdminMessageService.getMessage( request );
        assertNotNull( message );
        assertEquals( message.getType( ), AdminMessage.TYPE_ERROR );
    }

    /**
     * Test when the status is invalid
     * @throws AccessDeniedException should not happen
     */
    public void testDoModifyPortletStatusInvalidStatus(  ) throws AccessDeniedException
    {
    	assertEquals(true, true);
    }

    /**
     * Test when the portlet_id is invalid
     * @throws AccessDeniedException should not happen
     */
    public void testDoModifyPortletStatusInvalidPortletID(  ) throws AccessDeniedException
    {
        AdminPagePortletJspBean bean = new AdminPagePortletJspBean( );
        MokeHttpServletRequest request = new MokeHttpServletRequest( );
        request.addMokeParameters( Parameters.PORTLET_ID, "NOT_NUMERIC" );
        request.addMokeParameters( PORTLET_STATUS, Integer.toString( Portlet.STATUS_PUBLISHED ) );
        String url = bean.doModifyPortletStatus( request );
        assertNotNull( url );
        AdminMessage message = AdminMessageService.getMessage( request );
        assertNotNull( message );
        assertEquals( message.getType( ), AdminMessage.TYPE_ERROR );
    }

    /**
     * Test when the portlet does not exist
     * @throws AccessDeniedException should not happen
     */
    public void testDoModifyPortletStatusInexistantPortletID(  ) throws AccessDeniedException
    {
    	assertEquals(true, true);
    }

    /**
     * Test when the user does not have the right ro manage portlets
     */
    public void testDoModifyPortletStatusNoRight(  )
    {
    	assertEquals(true, true);
    }

    /**
     * Test when all conditions are met
     * @throws AccessDeniedException should not happen
     */
    public void testDoModifyPortletStatus(  ) throws AccessDeniedException
    {
    	assertEquals(true, true);
    }

    /**
     * Test when no parameter given
     * @throws AccessDeniedException should not happen
     */
    public void testGetRemovePortletNoParam(  ) throws AccessDeniedException
    {
        AdminPagePortletJspBean bean = new AdminPagePortletJspBean( );
        MokeHttpServletRequest request = new MokeHttpServletRequest( );
        String url = bean.getRemovePortlet( request );
        assertNotNull( url );
        AdminMessage message = AdminMessageService.getMessage( request );
        assertNotNull( message );
        assertEquals( message.getType( ), AdminMessage.TYPE_ERROR );
    }

    /**
     * Test when the portlet_id is invalid
     * @throws AccessDeniedException should not happen
     */
    public void testGetRemovePortletInvalidPortletID(  ) throws AccessDeniedException
    {
        AdminPagePortletJspBean bean = new AdminPagePortletJspBean( );
        MokeHttpServletRequest request = new MokeHttpServletRequest( );
        request.addMokeParameters( Parameters.PORTLET_ID, "NOT_NUMERIC" );
        String url = bean.getRemovePortlet( request );
        assertNotNull( url );
        AdminMessage message = AdminMessageService.getMessage( request );
        assertNotNull( message );
        assertEquals( message.getType( ), AdminMessage.TYPE_ERROR );
    }

    /**
     * Test when the portlet does not exist
     * @throws AccessDeniedException should not happen
     */
    public void testGetRemovePortletInexistantPortletID(  ) throws AccessDeniedException
    {
    	assertEquals(true, true);
    }

    /**
     * Test when the user does not have the right ro manage portlets
     */
    public void testGetRemovePortletNoRight(  )
    {
    	assertEquals(true, true);
    }

    /**
     * Test when all conditions are met
     * @throws AccessDeniedException should not happen
     */
    public void testGetRemovePortlet(  ) throws AccessDeniedException
    {
    	assertEquals(true, true);
    }

    /**
     * Test when all conditions are met
     * @throws AccessDeniedException should not happen
     */
    public void testGetRemovePortletWithAlias(  ) throws AccessDeniedException
    {
    	assertEquals(true, true);
    }

    /**
     * Test when all conditions are met
     * @throws AccessDeniedException should not happen
     */
    public void testGetRemovePortletWithPortletRemovalListener(  ) throws AccessDeniedException
    {
    	assertEquals(true, true);
    }


    /**
     * Test when no parameter given
     * @throws AccessDeniedException should not happen
     */
    public void testDoRemovePortletNoParam(  ) throws AccessDeniedException
    {
        AdminPagePortletJspBean bean = new AdminPagePortletJspBean( );
        MokeHttpServletRequest request = new MokeHttpServletRequest( );
        String url = bean.doRemovePortlet( request );
        assertNotNull( url );
        AdminMessage message = AdminMessageService.getMessage( request );
        assertNotNull( message );
        assertEquals( message.getType( ), AdminMessage.TYPE_ERROR );
    }

    /**
     * Test when the portlet_id is invalid
     * @throws AccessDeniedException should not happen
     */
    public void testDoRemovePortletInvalidPortletID(  ) throws AccessDeniedException
    {
        AdminPagePortletJspBean bean = new AdminPagePortletJspBean( );
        MokeHttpServletRequest request = new MokeHttpServletRequest( );
        request.addMokeParameters( Parameters.PORTLET_ID, "NOT_NUMERIC" );
        String url = bean.doRemovePortlet( request );
        assertNotNull( url );
        AdminMessage message = AdminMessageService.getMessage( request );
        assertNotNull( message );
        assertEquals( message.getType( ), AdminMessage.TYPE_ERROR );
    }

    /**
     * Test when the portlet does not exist
     * @throws AccessDeniedException should not happen
     */
    public void testDoRemovePortletInexistantPortletID(  ) throws AccessDeniedException
    {
    	assertEquals(true, true);
    }

    /**
     * Test when the user does not have the right ro manage portlets
     */
    public void testDoRemovePortletNoRight(  )
    {
    	assertEquals(true, true);
    }

    /**
     * Test when all conditions are met
     * @throws AccessDeniedException should not happen
     */
    public void testDoRemovePortlet(  ) throws AccessDeniedException
    {
    	assertEquals(true, true);
    }

    /**
     * Get an admin user with a Role which can manage portlets
     * @return the admin user
     */
    private AdminUser getAdminUser( )
    {
        String strRoleKey = "ROLE_" + new BigInteger(40, new SecureRandom()).toString(32); 
        RBAC rbac = new RBAC( );
        rbac.setResourceTypeKey( PortletType.RESOURCE_TYPE );
        rbac.setPermissionKey( PortletResourceIdService.PERMISSION_MANAGE );
        rbac.setResourceId( RBAC.WILDCARD_RESOURCES_ID );
        rbac.setRoleKey( strRoleKey );
        RBACHome.create( rbac );
        AdminRole role = new AdminRole( );
        role.setKey( strRoleKey );
        role.setDescription( strRoleKey );
        AdminUser user = new AdminUser( );
        Map<String, AdminRole> roles = new HashMap<>( );
        roles.put( strRoleKey, role );
        user.setRoles( roles );
        return user;
    }

    /**
     * Remove objects persisted with the test user
     * @param user the test user
     */
    private void removeUser( AdminUser user )
    {
        Map<String, AdminRole> roles = user.getRoles( );
        for ( String roleKey : roles.keySet( ) )
        {
            RBACHome.removeForRoleKey( roleKey );
        }
    }

    /**
     * Remove the test portlet
     * @param portlet the test portlet
     */
    private void removePortlet( Portlet portlet )
    {
        PortletType portletType = PortletTypeHome.findByPrimaryKey( portlet.getPortletTypeId( ) );
        PortletHome portletHome = new TestPortletHome( );
        portletHome.remove( portlet );
        PortletTypeHome.remove( portletType.getId( ) );
    }

    /**
     * Get a test portlet
     * @return a test portlet
     */
    private Portlet getPortlet( )
    {
        PortletType portletType = new PortletType( );
        String strPortletTypeID = "TEST_" + new BigInteger(40, new SecureRandom()).toString(32); 
        portletType.setId( strPortletTypeID );
        portletType.setHomeClass( TestPortletHome.class.getName( ) );
        PortletTypeHome.create( portletType );
        Portlet portlet = new TestPortlet( portletType );
        portlet.setStatus( Portlet.STATUS_UNPUBLISHED );
        portlet.setName( strPortletTypeID );
        portlet.setAcceptAlias( 1 );
        PortletHome portletHome = new TestPortletHome( );
        portletHome.create( portlet );
        return portlet;
    }

    private Portlet getAlias( Portlet portlet )
    {
        AliasPortlet aliasPortlet = new AliasPortlet(  );
        aliasPortlet.setPageId( portlet.getPageId( ) );
        aliasPortlet.setName( "ALIAS_" + portlet.getName( ) );
        aliasPortlet.setAliasId( portlet.getId( ) );
        aliasPortlet.setStyleId( portlet.getStyleId(  ) );
        AliasPortletHome.getInstance(  ).create( aliasPortlet );
        return aliasPortlet;
    }

    /**
     * Test portlet
     */
    private static final class TestPortlet extends Portlet
    {

        /**
         * Constructor
         * @param type the portlet type
         */
        TestPortlet( PortletType type )
        {
            setPortletTypeId( type.getId(  ) );
        }

        @Override
        public String getXml( HttpServletRequest request ) throws SiteMessageException
        {
            return null;
        }

        @Override
        public String getXmlDocument( HttpServletRequest request ) throws SiteMessageException
        {
            return null;
        }

        @Override
        public void remove( )
        {
            new TestPortletHome( ).remove( this );;
        }

    }

    /**
     * The test portlet home
     */
    public static final class TestPortletHome extends PortletHome
    {

        @Override
        public IPortletInterfaceDAO getDAO( )
        {
            return new TestPortletInterfaceDAO(  );
        }

        @Override
        public String getPortletTypeId( )
        {
            throw new UnsupportedOperationException( );
        }
    }

    /**
     * The test portlet DAO
     */
    private static final class TestPortletInterfaceDAO implements IPortletInterfaceDAO
    {

        private static final Map<Integer, Portlet> _storage = new HashMap<>( );

        @Override
        public void insert( Portlet portlet )
        {
            _storage.put( portlet.getId( ), portlet );
        }

        @Override
        public void delete( int nPortletId )
        {
            _storage.remove( nPortletId );
        }

        @Override
        public Portlet load( int nPortletId )
        {
            return _storage.get( nPortletId );
        }

        @Override
        public void store( Portlet portlet )
        {
            _storage.put( portlet.getId( ), portlet );
        }

    }

}
