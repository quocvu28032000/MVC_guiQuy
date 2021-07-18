package Demo.DataAccess;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;

public class SqlDataAccess {
    private final String url;
    private final String user;
    private final String password;
    private final String severName;
    private final String databaseName;

    private Connection connection;
    private PreparedStatement ps;

    public SqlDataAccess() {
        severName = "DESKTOP-41JFK8G\\SQLEXPRESS";
        databaseName = "DB_T3H_WareHouseManger";

        url = "jdbc:sqlserver://" + severName + ";databaseName=" + databaseName;

        user = "sa";
        password = "vucaca";
    }

    public Connection getConnection() {
        if (connection != null) {
            return connection;
        }

        try {
            Class.forName ("com.microsoft.sqlserver.jdbc.SQLServerDriver").newInstance ( );

            connection = DriverManager.getConnection (url, user, password);

            System.out.println ("SQL connected ^-^!!!");
        } catch (Exception exception) {
            System.out.println ("SQL error message:");
            exception.printStackTrace ( );
            System.out.println ("SQL connect failed!!!");
        }

        return connection;
    }

    public void closeConnection() {
        if (connection != null) {
            try {
                connection.close ( );
                ps.close ( );
            } catch (Exception exception) {
                exception.printStackTrace ( );
            } finally {
                connection = null;
                ps = null;
            }
        }
    }

    public ResultSet getTable(String query, List<String> parameters) {
        ResultSet resultSet = null;

        try {
            ps = getConnection ( ).prepareStatement (query);
            for (int i = 0; i < parameters.size ( ); i++) {
                ps.setString (i + 1, parameters.get (i));
            }

            resultSet = ps.executeQuery ( );
        } catch (Exception ex) {
            System.out.println ("Get table error:");

            ex.printStackTrace ( );
        }
        return resultSet;
    }

    public boolean executeNonQuery(String query, List<String> parameters) {
        boolean result = false;

        try {
            ps = getConnection ( ).prepareStatement (query);
            for (int i = 0; i <= parameters.size ( ); i++) {
                ps.setString (i + 1, parameters.get (i));
            }

            result = ps.executeUpdate ( ) == 1 ? true : false;
        } catch (Exception ex) {
            System.out.println ("Get table error:");

            ex.printStackTrace ( );
        }
        return result;
    }
}
