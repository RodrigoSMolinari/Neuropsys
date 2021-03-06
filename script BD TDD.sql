USE [SeguridadDB]
GO
/****** Object:  Table [dbo].[AgendaProfesional]    Script Date: 11/10/2020 1:32:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AgendaProfesional](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Dia] [varchar](50) NULL,
	[Hora] [varchar](50) NULL,
	[IDProfesional] [int] NULL,
 CONSTRAINT [PK_AgendaProfesional] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Especialidad]    Script Date: 11/10/2020 1:32:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Especialidad](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[nombreEspecialidad] [nvarchar](50) NULL,
 CONSTRAINT [PK_Especialidad] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GrupoUsuario]    Script Date: 11/10/2020 1:32:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[GrupoUsuario](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[nombreGrupo] [varchar](max) NULL,
 CONSTRAINT [PK_GrupoUsuario] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ObraSocial]    Script Date: 11/10/2020 1:32:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ObraSocial](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[nombreObraSocial] [varchar](50) NULL,
 CONSTRAINT [PK_ObraSocial] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PlanOS]    Script Date: 11/10/2020 1:32:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PlanOS](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[nombrePlan] [nvarchar](50) NULL,
	[IDObraSocial] [int] NULL,
 CONSTRAINT [PK_Plan] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Profesional]    Script Date: 11/10/2020 1:32:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Profesional](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[nombreProfesional] [nvarchar](50) NULL,
 CONSTRAINT [PK_Profesional] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Turno]    Script Date: 11/10/2020 1:32:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Turno](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[turno] [varchar](50) NULL,
	[IDObraSocial] [int] NULL,
	[IDPlan] [int] NULL,
	[IDEspecialidad] [int] NULL,
	[IDProfesional] [int] NULL,
	[Dia] [varchar](50) NULL,
	[Hora] [nvarchar](50) NULL,
	[IDPaciente] [int] NULL,
	[IDAgenda] [int] NULL,
 CONSTRAINT [PK_Turno] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 11/10/2020 1:32:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuario](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[nombreUsuario] [nvarchar](max) NULL,
 CONSTRAINT [PK_Usuario] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[AgendaProfesional] ON 

INSERT [dbo].[AgendaProfesional] ([ID], [Dia], [Hora], [IDProfesional]) VALUES (1, N'01/12/2020', N'15:00', 1)
INSERT [dbo].[AgendaProfesional] ([ID], [Dia], [Hora], [IDProfesional]) VALUES (2, N'01/12/2020', N'16:00', 1)
INSERT [dbo].[AgendaProfesional] ([ID], [Dia], [Hora], [IDProfesional]) VALUES (3, N'01/12/2020', N'17:00', 1)
INSERT [dbo].[AgendaProfesional] ([ID], [Dia], [Hora], [IDProfesional]) VALUES (4, N'01/12/2020', N'18:00', 1)
INSERT [dbo].[AgendaProfesional] ([ID], [Dia], [Hora], [IDProfesional]) VALUES (5, N'01/12/2020', N'19:00', 1)
INSERT [dbo].[AgendaProfesional] ([ID], [Dia], [Hora], [IDProfesional]) VALUES (6, N'01/12/2020', N'20:00', 2)
SET IDENTITY_INSERT [dbo].[AgendaProfesional] OFF
SET IDENTITY_INSERT [dbo].[Especialidad] ON 

INSERT [dbo].[Especialidad] ([ID], [nombreEspecialidad]) VALUES (1, N'Psicopedagogo')
INSERT [dbo].[Especialidad] ([ID], [nombreEspecialidad]) VALUES (2, N'Psicologo')
INSERT [dbo].[Especialidad] ([ID], [nombreEspecialidad]) VALUES (3, N'Psiquiatra')
INSERT [dbo].[Especialidad] ([ID], [nombreEspecialidad]) VALUES (4, N'Nutricionista')
INSERT [dbo].[Especialidad] ([ID], [nombreEspecialidad]) VALUES (5, N'Fonoaudiologa')
SET IDENTITY_INSERT [dbo].[Especialidad] OFF
SET IDENTITY_INSERT [dbo].[GrupoUsuario] ON 

INSERT [dbo].[GrupoUsuario] ([ID], [nombreGrupo]) VALUES (1, N'Administrador')
INSERT [dbo].[GrupoUsuario] ([ID], [nombreGrupo]) VALUES (3, N'Profesional')
INSERT [dbo].[GrupoUsuario] ([ID], [nombreGrupo]) VALUES (5, N'Paciente')
INSERT [dbo].[GrupoUsuario] ([ID], [nombreGrupo]) VALUES (7, N'Operador')
SET IDENTITY_INSERT [dbo].[GrupoUsuario] OFF
SET IDENTITY_INSERT [dbo].[ObraSocial] ON 

INSERT [dbo].[ObraSocial] ([ID], [nombreObraSocial]) VALUES (1, N'OSDE')
INSERT [dbo].[ObraSocial] ([ID], [nombreObraSocial]) VALUES (2, N'Caja Forense')
INSERT [dbo].[ObraSocial] ([ID], [nombreObraSocial]) VALUES (3, N'ACA Salud')
INSERT [dbo].[ObraSocial] ([ID], [nombreObraSocial]) VALUES (5, N'AMR Salud')
INSERT [dbo].[ObraSocial] ([ID], [nombreObraSocial]) VALUES (6, N'Medife')
INSERT [dbo].[ObraSocial] ([ID], [nombreObraSocial]) VALUES (7, N'Esencial')
INSERT [dbo].[ObraSocial] ([ID], [nombreObraSocial]) VALUES (8, N'Medicus')
INSERT [dbo].[ObraSocial] ([ID], [nombreObraSocial]) VALUES (9, N'Sancor Salud')
SET IDENTITY_INSERT [dbo].[ObraSocial] OFF
SET IDENTITY_INSERT [dbo].[PlanOS] ON 

INSERT [dbo].[PlanOS] ([ID], [nombrePlan], [IDObraSocial]) VALUES (1, N'Basico', 1)
INSERT [dbo].[PlanOS] ([ID], [nombrePlan], [IDObraSocial]) VALUES (2, N'Estandar', 1)
INSERT [dbo].[PlanOS] ([ID], [nombrePlan], [IDObraSocial]) VALUES (3, N'Completo', 2)
INSERT [dbo].[PlanOS] ([ID], [nombrePlan], [IDObraSocial]) VALUES (4, N'Oro', 2)
INSERT [dbo].[PlanOS] ([ID], [nombrePlan], [IDObraSocial]) VALUES (5, N'Platino', 2)
SET IDENTITY_INSERT [dbo].[PlanOS] OFF
SET IDENTITY_INSERT [dbo].[Profesional] ON 

INSERT [dbo].[Profesional] ([ID], [nombreProfesional]) VALUES (1, N'Lorena Ostoich')
INSERT [dbo].[Profesional] ([ID], [nombreProfesional]) VALUES (2, N'Marisa Vanzatti')
INSERT [dbo].[Profesional] ([ID], [nombreProfesional]) VALUES (3, N'Noelia Marsol')
INSERT [dbo].[Profesional] ([ID], [nombreProfesional]) VALUES (4, N'Eugenia Lopez')
INSERT [dbo].[Profesional] ([ID], [nombreProfesional]) VALUES (5, N'Camila Rodriguez')
SET IDENTITY_INSERT [dbo].[Profesional] OFF
SET IDENTITY_INSERT [dbo].[Turno] ON 

INSERT [dbo].[Turno] ([ID], [turno], [IDObraSocial], [IDPlan], [IDEspecialidad], [IDProfesional], [Dia], [Hora], [IDPaciente], [IDAgenda]) VALUES (1, N'1', 2, 2, 1, 2, N'02/12/2020', N'16:00', 1, 2)
INSERT [dbo].[Turno] ([ID], [turno], [IDObraSocial], [IDPlan], [IDEspecialidad], [IDProfesional], [Dia], [Hora], [IDPaciente], [IDAgenda]) VALUES (2, N'2', 2, 2, 3, 5, N'02/12/2020', N'17:00', 1, 3)
INSERT [dbo].[Turno] ([ID], [turno], [IDObraSocial], [IDPlan], [IDEspecialidad], [IDProfesional], [Dia], [Hora], [IDPaciente], [IDAgenda]) VALUES (35, NULL, 7, 2, 2, 1, NULL, NULL, NULL, 4)
INSERT [dbo].[Turno] ([ID], [turno], [IDObraSocial], [IDPlan], [IDEspecialidad], [IDProfesional], [Dia], [Hora], [IDPaciente], [IDAgenda]) VALUES (36, NULL, 1, 2, 4, 3, NULL, NULL, NULL, 1)
SET IDENTITY_INSERT [dbo].[Turno] OFF
SET IDENTITY_INSERT [dbo].[Usuario] ON 

INSERT [dbo].[Usuario] ([ID], [nombreUsuario]) VALUES (3, N'Bruno Agustin Molinari')
SET IDENTITY_INSERT [dbo].[Usuario] OFF
/****** Object:  StoredProcedure [dbo].[SP_DeleteEspecialidad]    Script Date: 11/10/2020 1:32:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SP_DeleteEspecialidad]
@EspecId int

as BEGIN
	Delete from Especialidad where ID=@EspecId
	END
GO
/****** Object:  StoredProcedure [dbo].[SP_DeleteGrupo]    Script Date: 11/10/2020 1:32:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Delete
CREATE procedure [dbo].[SP_DeleteGrupo]
@GUsuId int

as BEGIN
	Delete from GrupoUsuario where ID=@GUsuId
	END
GO
/****** Object:  StoredProcedure [dbo].[SP_DeleteObraSocial]    Script Date: 11/10/2020 1:32:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Delete
CREATE procedure [dbo].[SP_DeleteObraSocial]
@OSocialId int

as BEGIN
	Delete from ObraSocial where ID=@OSocialId
	END
GO
/****** Object:  StoredProcedure [dbo].[SP_DeleteProfesional]    Script Date: 11/10/2020 1:32:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SP_DeleteProfesional]
@ProfeId int

as BEGIN
	Delete from Profesional where ID=@ProfeId
	END
GO
/****** Object:  StoredProcedure [dbo].[SP_DeleteTurno]    Script Date: 11/10/2020 1:32:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Delete
CREATE procedure [dbo].[SP_DeleteTurno]
@TurnoId int

as BEGIN
	Delete from Turno where ID=@TurnoId
	END
GO
/****** Object:  StoredProcedure [dbo].[SP_DeleteUsuario]    Script Date: 11/10/2020 1:32:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SP_DeleteUsuario]
@UsuId int

as BEGIN
	Delete from Usuario where ID=@UsuId
	END
GO
/****** Object:  StoredProcedure [dbo].[SP_GetAgendaProfesional]    Script Date: 11/10/2020 1:32:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Get by idGrupo
CREATE procedure [dbo].[SP_GetAgendaProfesional]
@AgenId int

as BEGIN
	Select * from AgendaProfesional where ID=@AgenId
	END
GO
/****** Object:  StoredProcedure [dbo].[SP_GetAllAgendaProfesional]    Script Date: 11/10/2020 1:32:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[SP_GetAllAgendaProfesional]
as
BEGIN
	select * from AgendaProfesional
END

GO
/****** Object:  StoredProcedure [dbo].[SP_GetAllEspecialidad]    Script Date: 11/10/2020 1:32:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[SP_GetAllEspecialidad]
as
BEGIN
	select * from Especialidad
END

GO
/****** Object:  StoredProcedure [dbo].[SP_GetAllGrupoUsuario]    Script Date: 11/10/2020 1:32:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[SP_GetAllGrupoUsuario]
as
BEGIN
	select * from GrupoUsuario
END

GO
/****** Object:  StoredProcedure [dbo].[SP_GetAllObraSocial]    Script Date: 11/10/2020 1:32:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[SP_GetAllObraSocial]
as
BEGIN
	select * from ObraSocial
END

GO
/****** Object:  StoredProcedure [dbo].[SP_GetAllPlanOS]    Script Date: 11/10/2020 1:32:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[SP_GetAllPlanOS]
as
BEGIN
	select * from PlanOS
END

GO
/****** Object:  StoredProcedure [dbo].[SP_GetAllPlanPorIDOSocial]    Script Date: 11/10/2020 1:32:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[SP_GetAllPlanPorIDOSocial]
as
BEGIN
	select * from PlanOS where IDObraSocial='@IDOSocial';
END

GO
/****** Object:  StoredProcedure [dbo].[SP_GetAllProfesional]    Script Date: 11/10/2020 1:32:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[SP_GetAllProfesional]
as
BEGIN
	select * from Profesional
END

GO
/****** Object:  StoredProcedure [dbo].[SP_GetAllTurno]    Script Date: 11/10/2020 1:32:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[SP_GetAllTurno]
as
BEGIN
	select * from Turno
END

GO
/****** Object:  StoredProcedure [dbo].[SP_GetAllUsuario]    Script Date: 11/10/2020 1:32:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[SP_GetAllUsuario]
as
BEGIN
	select * from Usuario
END

GO
/****** Object:  StoredProcedure [dbo].[SP_GetEspecialidad]    Script Date: 11/10/2020 1:32:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Get by idGrupo
CREATE procedure [dbo].[SP_GetEspecialidad]
@EspecId int

as BEGIN
	Select * from Especialidad where ID=@EspecId
	END
GO
/****** Object:  StoredProcedure [dbo].[SP_GetGrupoUsuario]    Script Date: 11/10/2020 1:32:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Get by idGrupo
CREATE procedure [dbo].[SP_GetGrupoUsuario]
@GUsuId int

as BEGIN
	Select * from GrupoUsuario where ID=@GUsuId
	END
GO
/****** Object:  StoredProcedure [dbo].[SP_GetObraSocial]    Script Date: 11/10/2020 1:32:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Get by idGrupo
CREATE procedure [dbo].[SP_GetObraSocial]
@OSocialId int

as BEGIN
	Select * from ObraSocial where ID=@OSocialId
	END
GO
/****** Object:  StoredProcedure [dbo].[SP_GetPlanOS]    Script Date: 11/10/2020 1:32:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Get by idGrupo
CREATE procedure [dbo].[SP_GetPlanOS]
@PlanId int

as BEGIN
	Select * from PlanOS where ID=@PlanId
	END
GO
/****** Object:  StoredProcedure [dbo].[SP_GetProfesional]    Script Date: 11/10/2020 1:32:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Get by idGrupo
CREATE procedure [dbo].[SP_GetProfesional]
@ProfId int

as BEGIN
	Select * from Profesional where ID=@ProfId
	END
GO
/****** Object:  StoredProcedure [dbo].[SP_GetTurno]    Script Date: 11/10/2020 1:32:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Get by idGrupo
CREATE procedure [dbo].[SP_GetTurno]
@TurnoId int

as BEGIN
	Select * from Turno where ID=@TurnoId
	END
GO
/****** Object:  StoredProcedure [dbo].[SP_GetUsuario]    Script Date: 11/10/2020 1:32:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Get by idUsu
CREATE procedure [dbo].[SP_GetUsuario]
@UsuId int

as BEGIN
	Select * from Usuario where ID=@UsuId
	END
GO
/****** Object:  StoredProcedure [dbo].[SP_InsertEspecialidad]    Script Date: 11/10/2020 1:32:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--Insert
CREATE procedure [dbo].[SP_InsertEspecialidad]
@nombreEspecialidad nvarchar (50)=''
as BEGIN
	Insert INTO Especialidad(nombreEspecialidad)
	Values (@nombreEspecialidad)
	END
GO
/****** Object:  StoredProcedure [dbo].[SP_InsertGrupo]    Script Date: 11/10/2020 1:32:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--Insert
create procedure [dbo].[SP_InsertGrupo]
@nombre varchar (150)=''
as BEGIN
	Insert INTO GrupoUsuario(nombreGrupo)
	Values (@nombre)
	END
GO
/****** Object:  StoredProcedure [dbo].[SP_InsertObraSocial]    Script Date: 11/10/2020 1:32:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--Insert
CREATE procedure [dbo].[SP_InsertObraSocial]
@nombreObraSocial varchar (150)=''
as BEGIN
	Insert INTO ObraSocial(nombreObraSocial)
	Values (@nombreObraSocial)
	END
GO
/****** Object:  StoredProcedure [dbo].[SP_InsertProfesional]    Script Date: 11/10/2020 1:32:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--Insert
CREATE procedure [dbo].[SP_InsertProfesional]
@nombreProfesional nvarchar (50)=''
as BEGIN
	Insert INTO Profesional(nombreProfesional)
	Values (@nombreProfesional)
	END
GO
/****** Object:  StoredProcedure [dbo].[SP_InsertTurno]    Script Date: 11/10/2020 1:32:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--Insert
CREATE procedure [dbo].[SP_InsertTurno]
@IDObraSocial int = '',
@IDPlanOS int= '',
@IDEspecialidad int= '',
@IDProfesional int= '',
@IDAgenda int=''
as BEGIN
	Insert INTO Turno(IDObraSocial,IDPlan,IDEspecialidad,IDProfesional,IDAgenda)
	Values (@IDObraSocial,@IDPlanOS,@IDEspecialidad,@IDProfesional,@IDAgenda)
	END
GO
/****** Object:  StoredProcedure [dbo].[SP_InsertUsuario]    Script Date: 11/10/2020 1:32:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--Insert
CREATE procedure [dbo].[SP_InsertUsuario]
@nombre varchar (150)=''
as BEGIN
	Insert INTO Usuario(nombreUsuario)
	Values (@nombre)
	END
GO
/****** Object:  StoredProcedure [dbo].[SP_UpdateEspecialidad]    Script Date: 11/10/2020 1:32:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Update
--Insert
CREATE procedure [dbo].[SP_UpdateEspecialidad]
@EspecId int = 0,
@nombreEspecialidad varchar (150)=''
as BEGIN
	Update Especialidad Set nombreEspecialidad=@nombreEspecialidad	where ID=@EspecId
	END
GO
/****** Object:  StoredProcedure [dbo].[SP_UpdateGrupo]    Script Date: 11/10/2020 1:32:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Update
--Insert
CREATE procedure [dbo].[SP_UpdateGrupo]
@GUsuId int = 0,
@nombre varchar (150)=''
as BEGIN
	Update GrupoUsuario Set nombreGrupo=@nombre	where ID=@GUsuId
	END
GO
/****** Object:  StoredProcedure [dbo].[SP_UpdateObraSocial]    Script Date: 11/10/2020 1:32:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Update
--Insert
CREATE procedure [dbo].[SP_UpdateObraSocial]
@OSocialId int = 0,
@nombreObraSocial varchar (150)=''
as BEGIN
	Update ObraSocial Set nombreObraSocial=@nombreObraSocial	where ID=@OSocialId
	END
GO
/****** Object:  StoredProcedure [dbo].[SP_UpdateProfesional]    Script Date: 11/10/2020 1:32:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Update
--Insert
CREATE procedure [dbo].[SP_UpdateProfesional]
@ProfeId int = 0,
@nombreProfesional varchar (150)=''
as BEGIN
	Update Profesional Set nombreProfesional=@nombreProfesional	where ID=@ProfeId
	END
GO
/****** Object:  StoredProcedure [dbo].[SP_UpdateTurno]    Script Date: 11/10/2020 1:32:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Update
--Insert
CREATE procedure [dbo].[SP_UpdateTurno]
@TurnoId int = 0,
@Turno varchar (150)=''
as BEGIN
	Update Turno Set Turno=@Turno	where ID=@TurnoId
	END
GO
/****** Object:  StoredProcedure [dbo].[SP_UpdateUsuario]    Script Date: 11/10/2020 1:32:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Update
--Insert
CREATE procedure [dbo].[SP_UpdateUsuario]
@UsuId int = 0,
@nombre varchar (150)=''
as BEGIN
	Update Usuario Set nombreUsuario=@nombre	where ID=@UsuId
	END
GO
