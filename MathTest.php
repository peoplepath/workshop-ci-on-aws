<?php
use PHPUnit\Framework\TestCase;

Class Math
{

    public function add($x, $y)
    {
        return $x + $y;
    }

    public function substract($x, $y)
    {
        return $x - $y;
    }

    public function multiply($x, $y)
    {
        return $x * $y;
    }

    public function divide($x, $y)
    {
        return $x / $y;
    }

}

Class MathTest extends TestCase
{

    public function setUp()
    {
        $this->instance = new Math();
    }

    public function testAdd()
    {
        $this->assertEquals(3, $this->instance->add(1, 2));
    }

    public function testSubstract()
    {
        $this->assertEquals(2, $this->instance->substract(7, 5));
    }

    public function testMultiply()
    {
        $this->assertEquals(9, $this->instance->multiply(3, 3));
    }

    public function testDivide()
    {
        $this->assertEquals(4, $this->instance->divide(8, 2));
    }
}

