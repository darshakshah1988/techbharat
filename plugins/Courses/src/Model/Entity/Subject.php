<?php
declare(strict_types=1);

namespace Courses\Model\Entity;

use Cake\ORM\Entity;

/**
 * Subject Entity
 *
 * @property int $id
 * @property int|null $course_id
 * @property string $title
 * @property int|null $max_weekly_classes
 * @property int|null $credit_hours
 * @property bool|null $is_activity
 * @property bool|null $is_exam
 * @property int $position
 * @property \Cake\I18n\FrozenTime $created
 * @property \Cake\I18n\FrozenTime $modified
 *
 * @property \Courses\Model\Entity\Course $course
 * @property \Courses\Model\Entity\SubjectsTeacher[] $subjects_teachers
 */
class Subject extends Entity
{
    /**
     * Fields that can be mass assigned using newEntity() or patchEntity().
     *
     * Note that when '*' is set to true, this allows all unspecified fields to
     * be mass assigned. For security purposes, it is advised to set '*' to false
     * (or remove it), and explicitly make individual fields accessible as needed.
     *
     * @var array
     */
    protected $_accessible = [
        'course_id' => true,
        'title' => true,
        'max_weekly_classes' => true,
        'credit_hours' => true,
        'is_activity' => true,
        'is_exam' => true,
        'position' => true,
        'created' => true,
        'modified' => true,
        'course' => true,
        'subjects_teachers' => true,
    ];
}
