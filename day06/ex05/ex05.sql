COMMENT ON TABLE person_discounts IS 'Таблица с персональными скидками';
COMMENT ON COLUMN person_discounts.id IS 'id записи о персональной скидке';
COMMENT ON COLUMN person_discounts.person_id IS 'person_id это id человека';
COMMENT ON COLUMN person_discounts.pizzeria_id IS 'pizzeria_id это id пиццерии';
COMMENT ON COLUMN person_discounts.discount IS 'размер скидки в %';