(deftemplate modeler-instance (slot instance) (slot from-rule-number))
(deftemplate modeler-instance-param (slot instance) (slot name) (multislot value))

(defrule binding-rule-1
    (declare (salience 103))
    (unbound-table-instance (table-id ?t0__) (has schema kdebug-signpost-interval))
    (unbound-table-instance (table-id ?t0__) (has kdebug-match-rule $?matching-rule))
    (unbound-table-instance (table-id ?t0__) (has target-pid $?target))
    (unbound-table-instance (table-id ?t0__) (has signpost-code-map $?signpost-code-map))
    (not (unbound-table-instance (table-id ?t0__) (has colorize-by-arg4 $?)))
    =>
    (bind ?instance__ (create-modeler-instance))
    (assert (modeler-instance (instance ?instance__) (from-rule-number 1)))
    (bind-output-table ?t0__)
    (assert (modeler-instance-param (instance ?instance__) (name target) (value ?target)))
    (assert (modeler-instance-param (instance ?instance__) (name signpost-code-map) (value ?signpost-code-map)))
    (assert (modeler-instance-param (instance ?instance__) (name matching-rule) (value ?matching-rule)))
)
(defrule add-optionals-for-a-rule-1-modeler-1
    (modeler-instance (instance ?instance__) (from-rule-number 1))
    (watchable-table-instance (table-id ?input__) (has schema kdebug-signpost))
    (watchable-table-instance (table-id ?input__) (has target-pid $?target))
    (watchable-table-instance (table-id ?input__) (has signpost-code-map $?signpost-code-map))
    (or (modeler-instance-param (instance ?instance__) (name signpost-code-map) (value $?signpost-code-map)) (not (modeler-instance-param (instance ?instance__) (name signpost-code-map))))
    (or (modeler-instance-param (instance ?instance__) (name target) (value $?target)) (not (modeler-instance-param (instance ?instance__) (name target))))
    =>
    (set-modeler-instance-to ?instance__)
    (watch-table ?input__)
    (assert (modeler-instance-param (instance ?instance__) (name signpost-code-map) (value $?signpost-code-map)))
    (assert (modeler-instance-param (instance ?instance__) (name target) (value $?target)))
)

(defrule binding-rule-2
    (declare (salience 202))
    (unbound-table-instance (table-id ?t0__) (has schema kdebug-signpost-interval))
    (unbound-table-instance (table-id ?t0__) (has kdebug-match-rule $?matching-rule))
    (unbound-table-instance (table-id ?t0__) (has target-pid $?target))
    (unbound-table-instance (table-id ?t0__) (has signpost-code-map $?signpost-code-map))
    (not (unbound-table-instance (table-id ?t0__) (has colorize-by-arg4 $?)))
    (unbound-table-instance (table-id ?t1__&~?t0__) (has schema global-roi-layout))
    (unbound-table-instance (table-id ?t1__) (has target-pid $?target))
    (unbound-table-instance (table-id ?t1__) (has colorize-by-arg4 $?colorize-by-arg4))
    (unbound-table-instance (table-id ?t1__) (has kdebug-match-rule $?matching-rule))
    (not (unbound-table-instance (table-id ?t1__) (has signpost-code-map $?)))
    =>
    (bind ?instance__ (create-modeler-instance))
    (assert (modeler-instance (instance ?instance__) (from-rule-number 2)))
    (bind-output-table ?t0__)
    (assert (modeler-instance-param (instance ?instance__) (name target) (value ?target)))
    (assert (modeler-instance-param (instance ?instance__) (name signpost-code-map) (value ?signpost-code-map)))
    (assert (modeler-instance-param (instance ?instance__) (name matching-rule) (value ?matching-rule)))
    (bind-output-table ?t1__)
    (assert (modeler-instance-param (instance ?instance__) (name target) (value ?target)))
    (assert (modeler-instance-param (instance ?instance__) (name matching-rule) (value ?matching-rule)))
    (assert (modeler-instance-param (instance ?instance__) (name colorize-by-arg4) (value ?colorize-by-arg4)))
)
(defrule add-optionals-for-a-rule-2-modeler-1
    (modeler-instance (instance ?instance__) (from-rule-number 2))
    (watchable-table-instance (table-id ?input__) (has schema kdebug-signpost))
    (watchable-table-instance (table-id ?input__) (has target-pid $?target))
    (watchable-table-instance (table-id ?input__) (has signpost-code-map $?signpost-code-map))
    (or (modeler-instance-param (instance ?instance__) (name signpost-code-map) (value $?signpost-code-map)) (not (modeler-instance-param (instance ?instance__) (name signpost-code-map))))
    (or (modeler-instance-param (instance ?instance__) (name target) (value $?target)) (not (modeler-instance-param (instance ?instance__) (name target))))
    =>
    (set-modeler-instance-to ?instance__)
    (watch-table ?input__)
    (assert (modeler-instance-param (instance ?instance__) (name signpost-code-map) (value $?signpost-code-map)))
    (assert (modeler-instance-param (instance ?instance__) (name target) (value $?target)))
)

(defrule add-optionals-for-a-rule-2-modeler-2
    (modeler-instance (instance ?instance__) (from-rule-number 2))
    (watchable-table-instance (table-id ?input__) (has schema kdebug-signpost))
    (watchable-table-instance (table-id ?input__) (has signpost-code-map $?signpost-code-map))
    (watchable-table-instance (table-id ?input__) (has target-pid $?target))
    (or (modeler-instance-param (instance ?instance__) (name signpost-code-map) (value $?signpost-code-map)) (not (modeler-instance-param (instance ?instance__) (name signpost-code-map))))
    (or (modeler-instance-param (instance ?instance__) (name target) (value $?target)) (not (modeler-instance-param (instance ?instance__) (name target))))
    =>
    (set-modeler-instance-to ?instance__)
    (watch-table ?input__)
    (assert (modeler-instance-param (instance ?instance__) (name signpost-code-map) (value $?signpost-code-map)))
    (assert (modeler-instance-param (instance ?instance__) (name target) (value $?target)))
)

(defrule binding-rule-3
    (declare (salience 102))
    (unbound-table-instance (table-id ?t1__) (has schema global-roi-layout))
    (unbound-table-instance (table-id ?t1__) (has target-pid $?target))
    (unbound-table-instance (table-id ?t1__) (has colorize-by-arg4 $?colorize-by-arg4))
    (unbound-table-instance (table-id ?t1__) (has kdebug-match-rule $?matching-rule))
    (not (unbound-table-instance (table-id ?t1__) (has signpost-code-map $?)))
    =>
    (bind ?instance__ (create-modeler-instance))
    (assert (modeler-instance (instance ?instance__) (from-rule-number 3)))
    (bind-output-table ?t1__)
    (assert (modeler-instance-param (instance ?instance__) (name target) (value ?target)))
    (assert (modeler-instance-param (instance ?instance__) (name matching-rule) (value ?matching-rule)))
    (assert (modeler-instance-param (instance ?instance__) (name colorize-by-arg4) (value ?colorize-by-arg4)))
)
(defrule add-optionals-for-a-rule-3-modeler-1
    (modeler-instance (instance ?instance__) (from-rule-number 3))
    (watchable-table-instance (table-id ?input__) (has schema kdebug-signpost))
    (watchable-table-instance (table-id ?input__) (has signpost-code-map $?signpost-code-map))
    (watchable-table-instance (table-id ?input__) (has target-pid $?target))
    (or (modeler-instance-param (instance ?instance__) (name signpost-code-map) (value $?signpost-code-map)) (not (modeler-instance-param (instance ?instance__) (name signpost-code-map))))
    (or (modeler-instance-param (instance ?instance__) (name target) (value $?target)) (not (modeler-instance-param (instance ?instance__) (name target))))
    =>
    (set-modeler-instance-to ?instance__)
    (watch-table ?input__)
    (assert (modeler-instance-param (instance ?instance__) (name signpost-code-map) (value $?signpost-code-map)))
    (assert (modeler-instance-param (instance ?instance__) (name target) (value $?target)))
)

(defrule binding-rule-4
    (declare (salience 301))
    (unbound-table-instance (table-id ?t0__) (has schema kdebug-signpost-interval))
    (unbound-table-instance (table-id ?t0__) (has kdebug-match-rule $?matching-rule))
    (unbound-table-instance (table-id ?t0__) (has target-pid $?target))
    (unbound-table-instance (table-id ?t0__) (has signpost-code-map $?signpost-code-map))
    (not (unbound-table-instance (table-id ?t0__) (has colorize-by-arg4 $?)))
    (unbound-table-instance (table-id ?t1__&~?t0__) (has schema global-roi-layout))
    (unbound-table-instance (table-id ?t1__) (has target-pid $?target))
    (unbound-table-instance (table-id ?t1__) (has colorize-by-arg4 $?colorize-by-arg4))
    (unbound-table-instance (table-id ?t1__) (has kdebug-match-rule $?matching-rule))
    (not (unbound-table-instance (table-id ?t1__) (has signpost-code-map $?)))
    (unbound-table-instance (table-id ?t2__&~?t0__&~?t1__) (has schema global-poi-layout))
    (unbound-table-instance (table-id ?t2__) (has colorize-by-arg4 $?colorize-by-arg4))
    (unbound-table-instance (table-id ?t2__) (has target-pid $?target))
    (not (unbound-table-instance (table-id ?t2__) (has signpost-code-map $?)))
    (not (unbound-table-instance (table-id ?t2__) (has kdebug-match-rule $?)))
    =>
    (bind ?instance__ (create-modeler-instance))
    (assert (modeler-instance (instance ?instance__) (from-rule-number 4)))
    (bind-output-table ?t0__)
    (assert (modeler-instance-param (instance ?instance__) (name target) (value ?target)))
    (assert (modeler-instance-param (instance ?instance__) (name signpost-code-map) (value ?signpost-code-map)))
    (assert (modeler-instance-param (instance ?instance__) (name matching-rule) (value ?matching-rule)))
    (bind-output-table ?t1__)
    (assert (modeler-instance-param (instance ?instance__) (name target) (value ?target)))
    (assert (modeler-instance-param (instance ?instance__) (name matching-rule) (value ?matching-rule)))
    (assert (modeler-instance-param (instance ?instance__) (name colorize-by-arg4) (value ?colorize-by-arg4)))
    (bind-output-table ?t2__)
    (assert (modeler-instance-param (instance ?instance__) (name target) (value ?target)))
    (assert (modeler-instance-param (instance ?instance__) (name colorize-by-arg4) (value ?colorize-by-arg4)))
)
(defrule add-optionals-for-a-rule-4-modeler-1
    (modeler-instance (instance ?instance__) (from-rule-number 4))
    (watchable-table-instance (table-id ?input__) (has schema kdebug-signpost))
    (watchable-table-instance (table-id ?input__) (has target-pid $?target))
    (watchable-table-instance (table-id ?input__) (has signpost-code-map $?signpost-code-map))
    (or (modeler-instance-param (instance ?instance__) (name signpost-code-map) (value $?signpost-code-map)) (not (modeler-instance-param (instance ?instance__) (name signpost-code-map))))
    (or (modeler-instance-param (instance ?instance__) (name target) (value $?target)) (not (modeler-instance-param (instance ?instance__) (name target))))
    =>
    (set-modeler-instance-to ?instance__)
    (watch-table ?input__)
    (assert (modeler-instance-param (instance ?instance__) (name signpost-code-map) (value $?signpost-code-map)))
    (assert (modeler-instance-param (instance ?instance__) (name target) (value $?target)))
)

(defrule add-optionals-for-a-rule-4-modeler-2
    (modeler-instance (instance ?instance__) (from-rule-number 4))
    (watchable-table-instance (table-id ?input__) (has schema kdebug-signpost))
    (watchable-table-instance (table-id ?input__) (has signpost-code-map $?signpost-code-map))
    (watchable-table-instance (table-id ?input__) (has target-pid $?target))
    (or (modeler-instance-param (instance ?instance__) (name signpost-code-map) (value $?signpost-code-map)) (not (modeler-instance-param (instance ?instance__) (name signpost-code-map))))
    (or (modeler-instance-param (instance ?instance__) (name target) (value $?target)) (not (modeler-instance-param (instance ?instance__) (name target))))
    =>
    (set-modeler-instance-to ?instance__)
    (watch-table ?input__)
    (assert (modeler-instance-param (instance ?instance__) (name signpost-code-map) (value $?signpost-code-map)))
    (assert (modeler-instance-param (instance ?instance__) (name target) (value $?target)))
)

(defrule add-optionals-for-a-rule-4-modeler-3
    (modeler-instance (instance ?instance__) (from-rule-number 4))
    (watchable-table-instance (table-id ?input__) (has schema kdebug-signpost))
    (watchable-table-instance (table-id ?input__) (has signpost-code-map $?signpost-code-map))
    (watchable-table-instance (table-id ?input__) (has target-pid $?target))
    (or (modeler-instance-param (instance ?instance__) (name signpost-code-map) (value $?signpost-code-map)) (not (modeler-instance-param (instance ?instance__) (name signpost-code-map))))
    (or (modeler-instance-param (instance ?instance__) (name target) (value $?target)) (not (modeler-instance-param (instance ?instance__) (name target))))
    =>
    (set-modeler-instance-to ?instance__)
    (watch-table ?input__)
    (assert (modeler-instance-param (instance ?instance__) (name signpost-code-map) (value $?signpost-code-map)))
    (assert (modeler-instance-param (instance ?instance__) (name target) (value $?target)))
)

(defrule binding-rule-5
    (declare (salience 201))
    (unbound-table-instance (table-id ?t1__) (has schema global-roi-layout))
    (unbound-table-instance (table-id ?t1__) (has target-pid $?target))
    (unbound-table-instance (table-id ?t1__) (has colorize-by-arg4 $?colorize-by-arg4))
    (unbound-table-instance (table-id ?t1__) (has kdebug-match-rule $?matching-rule))
    (not (unbound-table-instance (table-id ?t1__) (has signpost-code-map $?)))
    (unbound-table-instance (table-id ?t2__&~?t1__) (has schema global-poi-layout))
    (unbound-table-instance (table-id ?t2__) (has colorize-by-arg4 $?colorize-by-arg4))
    (unbound-table-instance (table-id ?t2__) (has target-pid $?target))
    (not (unbound-table-instance (table-id ?t2__) (has signpost-code-map $?)))
    (not (unbound-table-instance (table-id ?t2__) (has kdebug-match-rule $?)))
    =>
    (bind ?instance__ (create-modeler-instance))
    (assert (modeler-instance (instance ?instance__) (from-rule-number 5)))
    (bind-output-table ?t1__)
    (assert (modeler-instance-param (instance ?instance__) (name target) (value ?target)))
    (assert (modeler-instance-param (instance ?instance__) (name matching-rule) (value ?matching-rule)))
    (assert (modeler-instance-param (instance ?instance__) (name colorize-by-arg4) (value ?colorize-by-arg4)))
    (bind-output-table ?t2__)
    (assert (modeler-instance-param (instance ?instance__) (name target) (value ?target)))
    (assert (modeler-instance-param (instance ?instance__) (name colorize-by-arg4) (value ?colorize-by-arg4)))
)
(defrule add-optionals-for-a-rule-5-modeler-1
    (modeler-instance (instance ?instance__) (from-rule-number 5))
    (watchable-table-instance (table-id ?input__) (has schema kdebug-signpost))
    (watchable-table-instance (table-id ?input__) (has signpost-code-map $?signpost-code-map))
    (watchable-table-instance (table-id ?input__) (has target-pid $?target))
    (or (modeler-instance-param (instance ?instance__) (name signpost-code-map) (value $?signpost-code-map)) (not (modeler-instance-param (instance ?instance__) (name signpost-code-map))))
    (or (modeler-instance-param (instance ?instance__) (name target) (value $?target)) (not (modeler-instance-param (instance ?instance__) (name target))))
    =>
    (set-modeler-instance-to ?instance__)
    (watch-table ?input__)
    (assert (modeler-instance-param (instance ?instance__) (name signpost-code-map) (value $?signpost-code-map)))
    (assert (modeler-instance-param (instance ?instance__) (name target) (value $?target)))
)

(defrule add-optionals-for-a-rule-5-modeler-2
    (modeler-instance (instance ?instance__) (from-rule-number 5))
    (watchable-table-instance (table-id ?input__) (has schema kdebug-signpost))
    (watchable-table-instance (table-id ?input__) (has signpost-code-map $?signpost-code-map))
    (watchable-table-instance (table-id ?input__) (has target-pid $?target))
    (or (modeler-instance-param (instance ?instance__) (name signpost-code-map) (value $?signpost-code-map)) (not (modeler-instance-param (instance ?instance__) (name signpost-code-map))))
    (or (modeler-instance-param (instance ?instance__) (name target) (value $?target)) (not (modeler-instance-param (instance ?instance__) (name target))))
    =>
    (set-modeler-instance-to ?instance__)
    (watch-table ?input__)
    (assert (modeler-instance-param (instance ?instance__) (name signpost-code-map) (value $?signpost-code-map)))
    (assert (modeler-instance-param (instance ?instance__) (name target) (value $?target)))
)

(defrule binding-rule-6
    (declare (salience 101))
    (unbound-table-instance (table-id ?t2__) (has schema global-poi-layout))
    (unbound-table-instance (table-id ?t2__) (has colorize-by-arg4 $?colorize-by-arg4))
    (unbound-table-instance (table-id ?t2__) (has target-pid $?target))
    (not (unbound-table-instance (table-id ?t2__) (has signpost-code-map $?)))
    (not (unbound-table-instance (table-id ?t2__) (has kdebug-match-rule $?)))
    =>
    (bind ?instance__ (create-modeler-instance))
    (assert (modeler-instance (instance ?instance__) (from-rule-number 6)))
    (bind-output-table ?t2__)
    (assert (modeler-instance-param (instance ?instance__) (name target) (value ?target)))
    (assert (modeler-instance-param (instance ?instance__) (name colorize-by-arg4) (value ?colorize-by-arg4)))
)
(defrule add-optionals-for-a-rule-6-modeler-1
    (modeler-instance (instance ?instance__) (from-rule-number 6))
    (watchable-table-instance (table-id ?input__) (has schema kdebug-signpost))
    (watchable-table-instance (table-id ?input__) (has signpost-code-map $?signpost-code-map))
    (watchable-table-instance (table-id ?input__) (has target-pid $?target))
    (or (modeler-instance-param (instance ?instance__) (name signpost-code-map) (value $?signpost-code-map)) (not (modeler-instance-param (instance ?instance__) (name signpost-code-map))))
    (or (modeler-instance-param (instance ?instance__) (name target) (value $?target)) (not (modeler-instance-param (instance ?instance__) (name target))))
    =>
    (set-modeler-instance-to ?instance__)
    (watch-table ?input__)
    (assert (modeler-instance-param (instance ?instance__) (name signpost-code-map) (value $?signpost-code-map)))
    (assert (modeler-instance-param (instance ?instance__) (name target) (value $?target)))
)

(defrule binding-rule-7
    (declare (salience 400))
    (unbound-table-instance (table-id ?t0__) (has schema kdebug-signpost-interval))
    (unbound-table-instance (table-id ?t0__) (has kdebug-match-rule $?matching-rule))
    (unbound-table-instance (table-id ?t0__) (has target-pid $?target))
    (unbound-table-instance (table-id ?t0__) (has signpost-code-map $?signpost-code-map))
    (not (unbound-table-instance (table-id ?t0__) (has colorize-by-arg4 $?)))
    (unbound-table-instance (table-id ?t1__&~?t0__) (has schema global-roi-layout))
    (unbound-table-instance (table-id ?t1__) (has target-pid $?target))
    (unbound-table-instance (table-id ?t1__) (has colorize-by-arg4 $?colorize-by-arg4))
    (unbound-table-instance (table-id ?t1__) (has kdebug-match-rule $?matching-rule))
    (not (unbound-table-instance (table-id ?t1__) (has signpost-code-map $?)))
    (unbound-table-instance (table-id ?t2__&~?t0__&~?t1__) (has schema global-poi-layout))
    (unbound-table-instance (table-id ?t2__) (has colorize-by-arg4 $?colorize-by-arg4))
    (unbound-table-instance (table-id ?t2__) (has target-pid $?target))
    (not (unbound-table-instance (table-id ?t2__) (has signpost-code-map $?)))
    (not (unbound-table-instance (table-id ?t2__) (has kdebug-match-rule $?)))
    (unbound-table-instance (table-id ?t3__&~?t0__&~?t1__&~?t2__) (has schema region-of-interest))
    (unbound-table-instance (table-id ?t3__) (has target-pid $?target))
    (unbound-table-instance (table-id ?t3__) (has kdebug-match-rule $?matching-rule))
    (not (unbound-table-instance (table-id ?t3__) (has signpost-code-map $?)))
    (not (unbound-table-instance (table-id ?t3__) (has colorize-by-arg4 $?)))
    =>
    (bind ?instance__ (create-modeler-instance))
    (assert (modeler-instance (instance ?instance__) (from-rule-number 7)))
    (bind-output-table ?t0__)
    (assert (modeler-instance-param (instance ?instance__) (name target) (value ?target)))
    (assert (modeler-instance-param (instance ?instance__) (name signpost-code-map) (value ?signpost-code-map)))
    (assert (modeler-instance-param (instance ?instance__) (name matching-rule) (value ?matching-rule)))
    (bind-output-table ?t1__)
    (assert (modeler-instance-param (instance ?instance__) (name target) (value ?target)))
    (assert (modeler-instance-param (instance ?instance__) (name matching-rule) (value ?matching-rule)))
    (assert (modeler-instance-param (instance ?instance__) (name colorize-by-arg4) (value ?colorize-by-arg4)))
    (bind-output-table ?t2__)
    (assert (modeler-instance-param (instance ?instance__) (name target) (value ?target)))
    (assert (modeler-instance-param (instance ?instance__) (name colorize-by-arg4) (value ?colorize-by-arg4)))
    (bind-output-table ?t3__)
    (assert (modeler-instance-param (instance ?instance__) (name target) (value ?target)))
    (assert (modeler-instance-param (instance ?instance__) (name matching-rule) (value ?matching-rule)))
)
(defrule add-optionals-for-a-rule-7-modeler-1
    (modeler-instance (instance ?instance__) (from-rule-number 7))
    (watchable-table-instance (table-id ?input__) (has schema kdebug-signpost))
    (watchable-table-instance (table-id ?input__) (has target-pid $?target))
    (watchable-table-instance (table-id ?input__) (has signpost-code-map $?signpost-code-map))
    (or (modeler-instance-param (instance ?instance__) (name signpost-code-map) (value $?signpost-code-map)) (not (modeler-instance-param (instance ?instance__) (name signpost-code-map))))
    (or (modeler-instance-param (instance ?instance__) (name target) (value $?target)) (not (modeler-instance-param (instance ?instance__) (name target))))
    =>
    (set-modeler-instance-to ?instance__)
    (watch-table ?input__)
    (assert (modeler-instance-param (instance ?instance__) (name signpost-code-map) (value $?signpost-code-map)))
    (assert (modeler-instance-param (instance ?instance__) (name target) (value $?target)))
)

(defrule add-optionals-for-a-rule-7-modeler-2
    (modeler-instance (instance ?instance__) (from-rule-number 7))
    (watchable-table-instance (table-id ?input__) (has schema kdebug-signpost))
    (watchable-table-instance (table-id ?input__) (has signpost-code-map $?signpost-code-map))
    (watchable-table-instance (table-id ?input__) (has target-pid $?target))
    (or (modeler-instance-param (instance ?instance__) (name signpost-code-map) (value $?signpost-code-map)) (not (modeler-instance-param (instance ?instance__) (name signpost-code-map))))
    (or (modeler-instance-param (instance ?instance__) (name target) (value $?target)) (not (modeler-instance-param (instance ?instance__) (name target))))
    =>
    (set-modeler-instance-to ?instance__)
    (watch-table ?input__)
    (assert (modeler-instance-param (instance ?instance__) (name signpost-code-map) (value $?signpost-code-map)))
    (assert (modeler-instance-param (instance ?instance__) (name target) (value $?target)))
)

(defrule add-optionals-for-a-rule-7-modeler-3
    (modeler-instance (instance ?instance__) (from-rule-number 7))
    (watchable-table-instance (table-id ?input__) (has schema kdebug-signpost))
    (watchable-table-instance (table-id ?input__) (has target-pid $?target))
    (watchable-table-instance (table-id ?input__) (has signpost-code-map $?signpost-code-map))
    (or (modeler-instance-param (instance ?instance__) (name signpost-code-map) (value $?signpost-code-map)) (not (modeler-instance-param (instance ?instance__) (name signpost-code-map))))
    (or (modeler-instance-param (instance ?instance__) (name target) (value $?target)) (not (modeler-instance-param (instance ?instance__) (name target))))
    =>
    (set-modeler-instance-to ?instance__)
    (watch-table ?input__)
    (assert (modeler-instance-param (instance ?instance__) (name signpost-code-map) (value $?signpost-code-map)))
    (assert (modeler-instance-param (instance ?instance__) (name target) (value $?target)))
)

(defrule add-optionals-for-a-rule-7-modeler-4
    (modeler-instance (instance ?instance__) (from-rule-number 7))
    (watchable-table-instance (table-id ?input__) (has schema kdebug-signpost))
    (watchable-table-instance (table-id ?input__) (has signpost-code-map $?signpost-code-map))
    (watchable-table-instance (table-id ?input__) (has target-pid $?target))
    (or (modeler-instance-param (instance ?instance__) (name signpost-code-map) (value $?signpost-code-map)) (not (modeler-instance-param (instance ?instance__) (name signpost-code-map))))
    (or (modeler-instance-param (instance ?instance__) (name target) (value $?target)) (not (modeler-instance-param (instance ?instance__) (name target))))
    =>
    (set-modeler-instance-to ?instance__)
    (watch-table ?input__)
    (assert (modeler-instance-param (instance ?instance__) (name signpost-code-map) (value $?signpost-code-map)))
    (assert (modeler-instance-param (instance ?instance__) (name target) (value $?target)))
)

(defrule binding-rule-8
    (declare (salience 300))
    (unbound-table-instance (table-id ?t1__) (has schema global-roi-layout))
    (unbound-table-instance (table-id ?t1__) (has target-pid $?target))
    (unbound-table-instance (table-id ?t1__) (has colorize-by-arg4 $?colorize-by-arg4))
    (unbound-table-instance (table-id ?t1__) (has kdebug-match-rule $?matching-rule))
    (not (unbound-table-instance (table-id ?t1__) (has signpost-code-map $?)))
    (unbound-table-instance (table-id ?t2__&~?t1__) (has schema global-poi-layout))
    (unbound-table-instance (table-id ?t2__) (has colorize-by-arg4 $?colorize-by-arg4))
    (unbound-table-instance (table-id ?t2__) (has target-pid $?target))
    (not (unbound-table-instance (table-id ?t2__) (has signpost-code-map $?)))
    (not (unbound-table-instance (table-id ?t2__) (has kdebug-match-rule $?)))
    (unbound-table-instance (table-id ?t3__&~?t1__&~?t2__) (has schema region-of-interest))
    (unbound-table-instance (table-id ?t3__) (has target-pid $?target))
    (unbound-table-instance (table-id ?t3__) (has kdebug-match-rule $?matching-rule))
    (not (unbound-table-instance (table-id ?t3__) (has signpost-code-map $?)))
    (not (unbound-table-instance (table-id ?t3__) (has colorize-by-arg4 $?)))
    =>
    (bind ?instance__ (create-modeler-instance))
    (assert (modeler-instance (instance ?instance__) (from-rule-number 8)))
    (bind-output-table ?t1__)
    (assert (modeler-instance-param (instance ?instance__) (name target) (value ?target)))
    (assert (modeler-instance-param (instance ?instance__) (name matching-rule) (value ?matching-rule)))
    (assert (modeler-instance-param (instance ?instance__) (name colorize-by-arg4) (value ?colorize-by-arg4)))
    (bind-output-table ?t2__)
    (assert (modeler-instance-param (instance ?instance__) (name target) (value ?target)))
    (assert (modeler-instance-param (instance ?instance__) (name colorize-by-arg4) (value ?colorize-by-arg4)))
    (bind-output-table ?t3__)
    (assert (modeler-instance-param (instance ?instance__) (name target) (value ?target)))
    (assert (modeler-instance-param (instance ?instance__) (name matching-rule) (value ?matching-rule)))
)
(defrule add-optionals-for-a-rule-8-modeler-1
    (modeler-instance (instance ?instance__) (from-rule-number 8))
    (watchable-table-instance (table-id ?input__) (has schema kdebug-signpost))
    (watchable-table-instance (table-id ?input__) (has signpost-code-map $?signpost-code-map))
    (watchable-table-instance (table-id ?input__) (has target-pid $?target))
    (or (modeler-instance-param (instance ?instance__) (name signpost-code-map) (value $?signpost-code-map)) (not (modeler-instance-param (instance ?instance__) (name signpost-code-map))))
    (or (modeler-instance-param (instance ?instance__) (name target) (value $?target)) (not (modeler-instance-param (instance ?instance__) (name target))))
    =>
    (set-modeler-instance-to ?instance__)
    (watch-table ?input__)
    (assert (modeler-instance-param (instance ?instance__) (name signpost-code-map) (value $?signpost-code-map)))
    (assert (modeler-instance-param (instance ?instance__) (name target) (value $?target)))
)

(defrule add-optionals-for-a-rule-8-modeler-2
    (modeler-instance (instance ?instance__) (from-rule-number 8))
    (watchable-table-instance (table-id ?input__) (has schema kdebug-signpost))
    (watchable-table-instance (table-id ?input__) (has signpost-code-map $?signpost-code-map))
    (watchable-table-instance (table-id ?input__) (has target-pid $?target))
    (or (modeler-instance-param (instance ?instance__) (name signpost-code-map) (value $?signpost-code-map)) (not (modeler-instance-param (instance ?instance__) (name signpost-code-map))))
    (or (modeler-instance-param (instance ?instance__) (name target) (value $?target)) (not (modeler-instance-param (instance ?instance__) (name target))))
    =>
    (set-modeler-instance-to ?instance__)
    (watch-table ?input__)
    (assert (modeler-instance-param (instance ?instance__) (name signpost-code-map) (value $?signpost-code-map)))
    (assert (modeler-instance-param (instance ?instance__) (name target) (value $?target)))
)

(defrule add-optionals-for-a-rule-8-modeler-3
    (modeler-instance (instance ?instance__) (from-rule-number 8))
    (watchable-table-instance (table-id ?input__) (has schema kdebug-signpost))
    (watchable-table-instance (table-id ?input__) (has target-pid $?target))
    (watchable-table-instance (table-id ?input__) (has signpost-code-map $?signpost-code-map))
    (or (modeler-instance-param (instance ?instance__) (name signpost-code-map) (value $?signpost-code-map)) (not (modeler-instance-param (instance ?instance__) (name signpost-code-map))))
    (or (modeler-instance-param (instance ?instance__) (name target) (value $?target)) (not (modeler-instance-param (instance ?instance__) (name target))))
    =>
    (set-modeler-instance-to ?instance__)
    (watch-table ?input__)
    (assert (modeler-instance-param (instance ?instance__) (name signpost-code-map) (value $?signpost-code-map)))
    (assert (modeler-instance-param (instance ?instance__) (name target) (value $?target)))
)

(defrule binding-rule-9
    (declare (salience 200))
    (unbound-table-instance (table-id ?t2__) (has schema global-poi-layout))
    (unbound-table-instance (table-id ?t2__) (has colorize-by-arg4 $?colorize-by-arg4))
    (unbound-table-instance (table-id ?t2__) (has target-pid $?target))
    (not (unbound-table-instance (table-id ?t2__) (has signpost-code-map $?)))
    (not (unbound-table-instance (table-id ?t2__) (has kdebug-match-rule $?)))
    (unbound-table-instance (table-id ?t3__&~?t2__) (has schema region-of-interest))
    (unbound-table-instance (table-id ?t3__) (has target-pid $?target))
    (unbound-table-instance (table-id ?t3__) (has kdebug-match-rule $?matching-rule))
    (not (unbound-table-instance (table-id ?t3__) (has signpost-code-map $?)))
    (not (unbound-table-instance (table-id ?t3__) (has colorize-by-arg4 $?)))
    =>
    (bind ?instance__ (create-modeler-instance))
    (assert (modeler-instance (instance ?instance__) (from-rule-number 9)))
    (bind-output-table ?t2__)
    (assert (modeler-instance-param (instance ?instance__) (name target) (value ?target)))
    (assert (modeler-instance-param (instance ?instance__) (name colorize-by-arg4) (value ?colorize-by-arg4)))
    (bind-output-table ?t3__)
    (assert (modeler-instance-param (instance ?instance__) (name target) (value ?target)))
    (assert (modeler-instance-param (instance ?instance__) (name matching-rule) (value ?matching-rule)))
)
(defrule add-optionals-for-a-rule-9-modeler-1
    (modeler-instance (instance ?instance__) (from-rule-number 9))
    (watchable-table-instance (table-id ?input__) (has schema kdebug-signpost))
    (watchable-table-instance (table-id ?input__) (has signpost-code-map $?signpost-code-map))
    (watchable-table-instance (table-id ?input__) (has target-pid $?target))
    (or (modeler-instance-param (instance ?instance__) (name signpost-code-map) (value $?signpost-code-map)) (not (modeler-instance-param (instance ?instance__) (name signpost-code-map))))
    (or (modeler-instance-param (instance ?instance__) (name target) (value $?target)) (not (modeler-instance-param (instance ?instance__) (name target))))
    =>
    (set-modeler-instance-to ?instance__)
    (watch-table ?input__)
    (assert (modeler-instance-param (instance ?instance__) (name signpost-code-map) (value $?signpost-code-map)))
    (assert (modeler-instance-param (instance ?instance__) (name target) (value $?target)))
)

(defrule add-optionals-for-a-rule-9-modeler-2
    (modeler-instance (instance ?instance__) (from-rule-number 9))
    (watchable-table-instance (table-id ?input__) (has schema kdebug-signpost))
    (watchable-table-instance (table-id ?input__) (has target-pid $?target))
    (watchable-table-instance (table-id ?input__) (has signpost-code-map $?signpost-code-map))
    (or (modeler-instance-param (instance ?instance__) (name signpost-code-map) (value $?signpost-code-map)) (not (modeler-instance-param (instance ?instance__) (name signpost-code-map))))
    (or (modeler-instance-param (instance ?instance__) (name target) (value $?target)) (not (modeler-instance-param (instance ?instance__) (name target))))
    =>
    (set-modeler-instance-to ?instance__)
    (watch-table ?input__)
    (assert (modeler-instance-param (instance ?instance__) (name signpost-code-map) (value $?signpost-code-map)))
    (assert (modeler-instance-param (instance ?instance__) (name target) (value $?target)))
)

(defrule binding-rule-10
    (declare (salience 100))
    (unbound-table-instance (table-id ?t3__) (has schema region-of-interest))
    (unbound-table-instance (table-id ?t3__) (has target-pid $?target))
    (unbound-table-instance (table-id ?t3__) (has kdebug-match-rule $?matching-rule))
    (not (unbound-table-instance (table-id ?t3__) (has signpost-code-map $?)))
    (not (unbound-table-instance (table-id ?t3__) (has colorize-by-arg4 $?)))
    =>
    (bind ?instance__ (create-modeler-instance))
    (assert (modeler-instance (instance ?instance__) (from-rule-number 10)))
    (bind-output-table ?t3__)
    (assert (modeler-instance-param (instance ?instance__) (name target) (value ?target)))
    (assert (modeler-instance-param (instance ?instance__) (name matching-rule) (value ?matching-rule)))
)
(defrule add-optionals-for-a-rule-10-modeler-1
    (modeler-instance (instance ?instance__) (from-rule-number 10))
    (watchable-table-instance (table-id ?input__) (has schema kdebug-signpost))
    (watchable-table-instance (table-id ?input__) (has target-pid $?target))
    (watchable-table-instance (table-id ?input__) (has signpost-code-map $?signpost-code-map))
    (or (modeler-instance-param (instance ?instance__) (name signpost-code-map) (value $?signpost-code-map)) (not (modeler-instance-param (instance ?instance__) (name signpost-code-map))))
    (or (modeler-instance-param (instance ?instance__) (name target) (value $?target)) (not (modeler-instance-param (instance ?instance__) (name target))))
    =>
    (set-modeler-instance-to ?instance__)
    (watch-table ?input__)
    (assert (modeler-instance-param (instance ?instance__) (name signpost-code-map) (value $?signpost-code-map)))
    (assert (modeler-instance-param (instance ?instance__) (name target) (value $?target)))
)

