CREATE OR REPLACE algorithm=temptable view `moderation_stack_filtered` AS SELECT `competitive_work`.`id_competitive_work` AS `id_competitive_work`, `declarant`.`email` AS `email`, `participant`.`name` AS `name`, `participant`.`surname` AS `surname`, `participant`.`age` AS `age`, `moderation_stack`.`queue_num` AS `queue_num`, `moderation_stack`.`status` AS `status`, `competitive_work`.`moderation` AS `moderation`, concat('http://konkurs.mir24.tv',`competitive_work`.`web_path`) AS `web_url` FROM ((((`competitive_work` LEFT JOIN `participant` ON (( `competitive_work`.`id_participant` = `participant`.`id_participant`))) LEFT JOIN `declarant` ON (( `competitive_work`.`id_declarant` = `declarant`.`id_declarant`))) LEFT JOIN `moderation_stack` ON (( `competitive_work`.`id_competitive_work` = `moderation_stack`.`id_competitive_work`))) LEFT JOIN `address` ON (( `declarant`.`id_declarant` = `address`.`declarant_id_declarant`))) WHERE (( `competitive_work`.`bet` = 1) AND ( NOT(( `declarant`.`email` LIKE '%yurchev%'))) AND ( NOT(( `declarant`.`email` LIKE '%yourchev%'))) AND ( NOT(( `declarant`.`email` LIKE '%vatasi%'))) AND ( NOT(( `declarant`.`email` LIKE '%konshin%'))) AND ( NOT(( `declarant`.`email` LIKE '%asda%'))) AND ( NOT(( `declarant`.`email` LIKE '%kovalchuk_dk%')))) ORDER BY `competitive_work`.`id_competitive_work` DESC
