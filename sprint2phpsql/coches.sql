create table tUsuarios (
    id int not null primary key auto_increment,
    nombre varchar (20) not null,
    apellido varchar (20) not null,
    gmail varchar (50) not null,
    contraseña varchar (50) not null
);

create table tCoches (
    id int not null primary key auto_increment,
    marca varchar (20) not null,
    nombre varchar (30) not null,
    url_imagen varchar (1000) not null,
    velocidad_máxima varchar (10) not null
);

create table tComentarios (
    id int not null primary key auto_increment,
    comentario varchar (200) not null,
    id_usuario int,
    id_coche int not null,
    CONSTRAINT fk_usuario_comentario FOREIGN KEY (id_usuario) REFERENCES tUsuarios(id),
    CONSTRAINT fk_coche_comentario FOREIGN KEY (id_coche) REFERENCES tCoches(id)
);

Insert into tUsuarios values
(0, 'Daniel', 'Díaz', 'daniel@gmail.com', '1234'),
(0, 'Lucía', 'Rodriguez', 'lucia@gmail.com', '1234'),
(0, 'Emma', 'Lopez', 'emma@gmail.com', '1234'),
(0, 'Diego', 'Rodriguez', 'diego@gmail.com', '1234'),
(0, 'Gabriel', 'De Oliveira', 'gabriel@gmail.com', '1234');

Insert into tCoches values
(0, 'Chevrolet', 'Camaro ZL1', 'https://www.autonocion.com/wp-content/uploads/2017/02/Chevrolet-Camaro-ZL1-1LE-1.jpg', '318km/h'),
(0, 'Lamborghini', 'Huracán', 'https://fotografias.lasexta.com/clipping/cmsimages02/2018/02/26/ECC31727-52C0-40E3-84E5-D11CA5CB5F72/98.jpg?crop=1164,655,x138,y0&width=1900&height=1069&optimize=high&format=webply', '325km/h'),
(0, 'Porsche', '911 GT3 RS', 'https://mediaassets.pca.org/pages/pca/images/content/02-PCA-Porsche-911-GT3-RS.jpg', '312km/h'),
(0, 'BMW', 'M4 CS', 'https://images.ecestaticos.com/2BpwqM1tEY0zR1cZ0kVBpomJ92U=/304x385:2226x1502/1440x810/filters:fill(white):format(jpg)/f.elconfidencial.com%2Foriginal%2F067%2Fd6f%2Fd4f%2F067d6fd4ff0363b221b2287ac9d81ac0.jpg', '302km/h'),
(0, 'McLaren', 'P1 GTR', 'https://d1gl66oyi6i593.cloudfront.net/wp-content/uploads/2022/11/subasta-McLaren-P1-GTR-Lanzante.jpg', '362km/h');

Insert into tComentarios values
(0, 'Es un modelo muy agresivo y estético con una grán comodidad interna y muy buena velocidad, me da miedo probarlo a máxima velocidad', 3, 1),
(0, 'Es un coche muy rápido y una locura de modelo, es increíble lo bien que se ve, me encantan sus colores metálicos brillantes', 2, 2),
(0, 'Me parece un modelo sobre valorado, la marca Lamborghini brilla por su moda, no por su calidad >:(', 5, 2),
(0, 'Siempre he conducido coches de la marcha BMW y pro fin me pude comprar un gran modelo, me encanta su diseño y su máxima velocidad me encanta >:)', 5, 4),
(0, 'Sinceramente es un coche muy rápido pero no me gusta su diseño, es muy bajo e incomodo para mi gusto', 1, 5),
(0, 'Es el mejor coche del mundo, es super rápido, super bonito, super cómodo y super seguro, no hay mejor coche que este :D', 1, 5),
(0, 'Desde pequeño siempre he querido este coche y hace un mes por fin lo adquirí, estoy muy contento con el, es el diseño que tanto me encanta, muy comodo y super rápido', 4, 3);