#include "riot_player.h"
#include <QApplication>

int main(int argc, char *argv[])
{
    QApplication a(argc, argv);
    riot_player w;
    w.show();

    return a.exec();
}
