USE [DBCRUDBootstrap]
GO
/****** Object:  Table [dbo].[Usuarios]    Script Date: 1/31/2025 11:39:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuarios](
	[Id_Usuario] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](15) NULL,
	[Edad] [int] NULL,
	[Correo] [varchar](max) NULL,
	[Fecha_Nacimiento] [date] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Usuarios] ON 

INSERT [dbo].[Usuarios] ([Id_Usuario], [Nombre], [Edad], [Correo], [Fecha_Nacimiento]) VALUES (1, N'Nancy Davolio', 21, N'nancyd@hotmail.com', CAST(N'1990-09-19' AS Date))
INSERT [dbo].[Usuarios] ([Id_Usuario], [Nombre], [Edad], [Correo], [Fecha_Nacimiento]) VALUES (2, N'Andrew Fuller', 33, N'andrewf@gmail.com', CAST(N'2022-06-09' AS Date))
INSERT [dbo].[Usuarios] ([Id_Usuario], [Nombre], [Edad], [Correo], [Fecha_Nacimiento]) VALUES (3, N'Janet Leverling', 32, N'janetl@gmail.com', CAST(N'2019-05-09' AS Date))
INSERT [dbo].[Usuarios] ([Id_Usuario], [Nombre], [Edad], [Correo], [Fecha_Nacimiento]) VALUES (4, N'Margaret Peacoc', 27, N'margaretp@gmail.com', CAST(N'2022-06-14' AS Date))
INSERT [dbo].[Usuarios] ([Id_Usuario], [Nombre], [Edad], [Correo], [Fecha_Nacimiento]) VALUES (5, N'Steven Buchanan', 23, N'stevenb@hotmail.com', CAST(N'2022-06-14' AS Date))
INSERT [dbo].[Usuarios] ([Id_Usuario], [Nombre], [Edad], [Correo], [Fecha_Nacimiento]) VALUES (6, N'Michael Suyama', 35, N'michaels@gmail.com', CAST(N'2022-09-18' AS Date))
INSERT [dbo].[Usuarios] ([Id_Usuario], [Nombre], [Edad], [Correo], [Fecha_Nacimiento]) VALUES (7, N'Robert King', 43, N'robertk@gmail.com', CAST(N'2013-05-14' AS Date))
INSERT [dbo].[Usuarios] ([Id_Usuario], [Nombre], [Edad], [Correo], [Fecha_Nacimiento]) VALUES (8, N'Laura Callahan', 29, N'laurac@hotmail.com', CAST(N'2005-06-16' AS Date))
INSERT [dbo].[Usuarios] ([Id_Usuario], [Nombre], [Edad], [Correo], [Fecha_Nacimiento]) VALUES (9, N'Anne Dodsworth', 32, N'anned@gmail.com', CAST(N'1991-09-21' AS Date))
INSERT [dbo].[Usuarios] ([Id_Usuario], [Nombre], [Edad], [Correo], [Fecha_Nacimiento]) VALUES (12, N'Angel TEST', 31, N'angelt@hotmail.com', CAST(N'2025-01-27' AS Date))
INSERT [dbo].[Usuarios] ([Id_Usuario], [Nombre], [Edad], [Correo], [Fecha_Nacimiento]) VALUES (18, N'Angel SOMEE 5', 31, N'angelt@hotmail.com', CAST(N'2025-01-31' AS Date))
INSERT [dbo].[Usuarios] ([Id_Usuario], [Nombre], [Edad], [Correo], [Fecha_Nacimiento]) VALUES (19, N'Angel PhoneMoto', 31, N'angelsk814@gmail.com', CAST(N'2025-01-31' AS Date))
SET IDENTITY_INSERT [dbo].[Usuarios] OFF
GO
/****** Object:  StoredProcedure [dbo].[sp_create]    Script Date: 1/31/2025 11:39:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_create]
@Nombre varchar(15),
@Edad int,
@Correo varchar(max),
@Fecha date
as begin
insert into Usuarios values(@Nombre, @Edad, @Correo, @Fecha)
end
GO
/****** Object:  StoredProcedure [dbo].[sp_delete]    Script Date: 1/31/2025 11:39:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_delete]
@Id int
as begin
delete from Usuarios where Id_Usuario=@Id
end
GO
/****** Object:  StoredProcedure [dbo].[sp_load]    Script Date: 1/31/2025 11:39:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_load]
as begin
select * from Usuarios
End
GO
/****** Object:  StoredProcedure [dbo].[sp_read]    Script Date: 1/31/2025 11:39:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_read]
@Nombre varchar(max)
as begin
select * from Usuarios where Nombre like @Nombre +'%'
end
GO
/****** Object:  StoredProcedure [dbo].[sp_update]    Script Date: 1/31/2025 11:39:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_update]
@Id int,
@Nombre varchar(15),
@Edad int,
@Correo varchar(max),
@Fecha date
as begin
update Usuarios set Nombre=@Nombre, Edad=@Edad, Correo=@Correo, Fecha_Nacimiento=@Fecha
where Id_Usuario=@Id
end
GO
