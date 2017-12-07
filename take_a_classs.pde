class Kvadrat {
    float x, y, s;
    Kvadrat(float _x, float _y, float _s) {
        this.x = _x;
        this.y = _y;
        this.s = _s;
    }

    void draw() {
        rect(this.x, this.y, this.s, this.s);
    }

    void right(float _s) {
        this.x += _s;
    }

}



class Meow extends Kvadrat {
    Meow(float _x, float _y, float _s) {
        super(_x, _y, _s);
    }
    void more() {
        fill(80, 200, 120);

    }
}

Meow[] m_array;

void setup() {
    size(600, 600);
    m_array = new Meow[5];
    for (int i = 0; i < 5; i++) {
        m_array[i] = new Meow(random(width), random(height), 100.0);
    }
}

void draw() {
    background(0);
    for (int i = 0; i < 5; i++) {
        m_array[i].draw();
        m_array[i].right(random(5));
        m_array[i].more();
    }
}