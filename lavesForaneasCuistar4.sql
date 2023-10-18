use cuistar4;
-- llaves foraneas tabla usuarios
describe usuarios;
describe roll;
describe ciudad;
alter table usuarios add foreign key(id_roll) references roll(id_rol);
alter table usuarios add foreign key(id_ciudad) references ciudad(id_ciudad) on update cascade on delete cascade;
-- llaves foraneas tabla productos
describe productos;
describe tipo_producto;
describe unidad_medida;
describe categoria;
describe tallas;
alter table productos add foreign key(id_tipoprodu) references tipo_producto(id_tipoprodu) on update cascade on delete cascade;
alter table productos add foreign key(id_unidadmedida) references unidad_medida(id_unidadmedida) on update cascade on delete cascade;
alter table productos add foreign key(id_categoria) references categoria(id_categoria) on update cascade on delete cascade;
alter table productos add foreign key(id_tallas) references tallas(id_tallas) on update cascade on delete cascade;
-- llaves foraneas tabla inventarios
describe stock_inventario;
describe salidas;
alter table stock_inventario add foreign key(id_producto) references productos(id_productos) on update cascade on delete cascade;
alter table stock_inventario add foreign key(id_salidas) references salidas(id_salida) on update cascade on delete cascade;
-- llaves foraneas tabla orden ventas
describe orden_ventas;
describe tipo_pago;
alter table orden_ventas add foreign key(id_inventario) references productos(id_productos) on update cascade on delete cascade;
alter table orden_ventas add foreign key(id_tipo_pago) references tipo_pago(id_pago) on update cascade on delete cascade;
alter table orden_ventas add foreign key(id_usuario) references usuarios(id_usuario) on update cascade on delete cascade;
-- llaves foraneas tabla mascotas
describe mascotas;
describe genero;
describe peso;
describe categoria;
describe estatura;
alter table mascotas add foreign key(id_usuario) references usuarios(id_usuario) on update cascade on delete cascade;
alter table mascotas add foreign key(id_genero) references genero(id_genero) on update cascade on delete cascade;
alter table mascotas add foreign key(id_peso) references peso(id_peso) on update cascade on delete cascade;
alter table mascotas add foreign key(id_categoria) references categoria(id_categoria) on update cascade on delete cascade;
alter table mascotas add foreign key(id_estatura) references estatura(id_estatura) on update cascade on delete cascade;
-- llaves foraneas tabla proveedores
describe proveedores;
alter table proveedores add foreign key(id_producto) references productos(id_productos) on update cascade on delete cascade;
-- llaves foraneas tabla pqrs
describe pqrs;
describe estado;
describe tipo_pqrs;
alter table pqrs add foreign key(id_usuario) references usuarios(id_usuario) on update cascade on delete cascade;
alter table pqrs add foreign key(id_tipo) references tipo_pqrs(id_tipo) on update cascade on delete cascade;
alter table pqrs add foreign key(id_estado) references estado(id_estado) on update cascade on delete cascade;




