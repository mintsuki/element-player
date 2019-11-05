#include "riot_player.h"
#include <QApplication>

int main(int argc, char *argv[])
{
    const char *baseUrl;
    if (argc > 1) {
        baseUrl = argv[1];
    } else {
        baseUrl = "https://riot.im/app/";
    }

    QApplication a(argc, argv);
    riot_player w(baseUrl);
    w.show();

    return a.exec();
}
