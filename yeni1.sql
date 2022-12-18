SELECT p.part_id,
       p.part_name,
	   p.quantity_on_hand,
	   p.quantity_on_order,
	   tc.part_name,
	   tc.total_committed
FROM parts AS p
     JOIN total_commitments AS tc
	 ON p.part_name = tc.part_name
WHERE tc.total_committed > p.quantity_on_hand;
	 