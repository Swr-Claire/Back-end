# 通讯录后端

这是一个基于 Spring Boot 的通讯录后端项目，提供联系人管理的相关功能，包括增删改查、分页查询等。

## 技术栈

- Java 8+
- Spring Boot
- Spring Data JPA
- MySQL

## 目录结构

- `com.example.Application` - 启动类
- `com.example.controller.UserController` - 用户管理的 RESTful API 控制器
- `com.example.service.UserService` - 业务逻辑处理层
- `com.example.dao.UserRepository` - 数据访问层，使用 Spring Data JPA 操作数据库
- `com.example.entity.User` - 用户实体类

## 安装与运行

1. **克隆项目**：
   ```bash
   git clone https://github.com/Swr-Claire/Back-end.git
2. **配置数据库:**
  在 `application.properties` 中设置 MySQL 数据库连接信息。

    ```properties
    spring.datasource.url=jdbc:mysql://localhost:3306/your_database_name?useSSL=false&serverTimezone=UTC
    spring.datasource.username=your_username
    spring.datasource.password=your_password
    spring.jpa.hibernate.ddl-auto=update

3. **运行项目:**
   mvn spring-boot:run
4. **API 访问：**
   项目启动后，访问 http://localhost:8080 进行接口调用。

## 接口说明

1. **新增联系人**  
   - **URL**：`POST /user`  
   - **请求体**：User 对象，JSON 格式  
   - **示例**：
   ```json
   {
     "name": "张三",
     "age": 25,
     "sex": "男",
     "address": "梅努斯国际工程学院",
     "phone": "123456789"
   }

2. **更新联系人**
- **URL**：`PUT /user`  
- **请求体**：User 对象，包含 id  
- **示例**：
  ```json
  {
    "id": 1,
    "name": "张三",
    "age": 26,
    "sex": "男",
    "address": "梅努斯国际工程学院",
    "phone": "987654321"
  }

3. **删除联系人**
- **URL**：`DELETE /user/{id}`  
- **参数**：id - 联系人 ID  

4. **根据 ID 查询联系人**
- **URL**：`GET /user/{id}`  
- **参数**：id - 联系人 ID  

5. **查询所有联系人**
- **URL**：`GET /user`  

6. **分页查询联系人**
- **URL**：`GET /user/page`  
- **参数**：
  - pageNum（页码，默认值：1）  
  - pageSize（每页数量，默认值：5）  
  - name（可选，模糊查询的姓名）  
- **示例**：`GET /user/page?pageNum=1&pageSize=5&name=张`  

## 联系方式
 如有任何问题，请联系1295321006@qq.com


