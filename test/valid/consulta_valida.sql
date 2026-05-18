
WITH EstadisticasDept AS (
    SELECT 
        e.dept_id,
        COUNT(e.id) AS total_empleados,
        AVG(e.salario) OVER (PARTITION BY e.dept_id) AS salario_promedio,
        CASE 
            WHEN e.salario > 100000 THEN 'Alto'
            ELSE 'Normal'
        END AS clasificacion
    FROM empleados AS e
    WHERE e.activo = TRUE
    GROUP BY e.dept_id, e.salario
)

