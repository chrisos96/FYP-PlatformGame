// [wave,type,spawnpoint,delay]

waves = ds_list_create();
ds_list_add(waves,[0,oEnemyFalling,0,0]);
ds_list_add(waves,[0,oEnemyFalling,0,75]);
ds_list_add(waves,[0,oEnemyFalling,0,100]);
ds_list_add(waves,[0,oEnemyFalling,1,0]);
ds_list_add(waves,[0,oEnemyFalling,1,80]);
ds_list_add(waves,[0,oEnemyFalling,1,100]);

ds_list_add(waves,[1,oEnemyFalling,0,10]);
ds_list_add(waves,[1,oEnemyFalling,0,200]);
ds_list_add(waves,[1,oEnemyFalling,0,300]);
ds_list_add(waves,[1,oEnemyFalling,1,440]);
ds_list_add(waves,[1,oEnemyFalling,0,550]);
ds_list_add(waves,[1,oEnemyFalling,1,600]);

ds_list_add(waves,[2,oEnemyFalling,0,10]);
ds_list_add(waves,[2,oEnemyFalling,1,250]);
ds_list_add(waves,[2,oEnemyFalling,1,330]);
ds_list_add(waves,[2,oEnemyFalling,0,410]);
ds_list_add(waves,[2,oEnemyFalling,1,520]);
ds_list_add(waves,[2,oEnemyFalling,1,590]);

ds_list_add(waves,[3,oEnemyBoss,1,0]);

spawn[0,0] = 740;
spawn[0,1] = 260;
spawn[1,0] = 1630;
spawn[1,1] = 260;
