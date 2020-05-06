INSERT INTO `mailserver`.`virtual_domains`
  (`id` ,`name`)
VALUES
  ('1', 'wt1-9.ephec-ti.be');

INSERT INTO `mailserver`.`virtual_users`
  (`id`, `domain_id`, `password` , `email`)
VALUES
  ('1', '1', 'Ephec123', 'toto.ouvrier@wt1-9.ephec-ti.be'),
  ('2', '1', 'Ephec123', 'toto.secretaire@wt1-9.ephec-ti.be'),
  ('3', '1', 'Ephec123', 'toto.comptable@wt1-9.ephec-ti.be'),
  ('4', '1', 'Ephec123', 'toto.commercial@wt1-9.ephec-ti.be'),
  ('5', '1', 'Ephec123', 'toto.direction@wt1-9.ephec-ti.be'),
  ('6', '1', 'Ephec123', 'tutu.commercial@wt1-9.ephec-ti.be');

INSERT INTO `mailserver`.`virtual_aliases`
  (`id', `domain_id', `source`, `destination`)
VALUES
  ('1', '1', 'contact@wt1-9.ephec-ti.be', 'toto.secretaire@wt1-9.ephec-ti.be'),
  ('2', '1', 'b2b@wt1-9.ephec-ti.be', 'toto.commercial@wt1-9.ephec-ti.be'),
  ('3', '1', 'b2b@wt1-9.ephec-ti.be', 'tutu.commercial@wt1-9.ephec-ti.be');
