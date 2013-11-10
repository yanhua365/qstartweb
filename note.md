MySql的配置：

     <!--配置Hibernate方言 -->
    <property name="hibernate.dialect" value="org.hibernate.dialect.MySQL5Dialect" />
    <!--配置数据库驱动 -->
    <property name="hibernate.connection.driver_class" value="com.mysql.jdbc.Driver" />
    <!--配置数据库用户名 -->
    <property name="hibernate.connection.username" value="root" />
    <!--配置数据库密码 -->
    <property name="hibernate.connection.password" value="root" />
    <!--配置数据库url -->
    <property name="hibernate.connection.url" value="jdbc:mysql://localhost:3306/spring_data_jpa?useUnicode=true&amp;characterEncoding=UTF-8" />