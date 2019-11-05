#ifndef RIOT_PLAYER_H
#define RIOT_PLAYER_H

#include <QMainWindow>
#include <QWebEnginePage>
#include <QWebEngineView>
#include <QMessageBox>

class RiotPlayerPage : public QWebEnginePage {
    Q_OBJECT
public:
    RiotPlayerPage(QWebEngineProfile *profile, QObject *parent = Q_NULLPTR);
    RiotPlayerPage(QObject *parent = Q_NULLPTR);
protected:
    QWebEnginePage *createWindow(QWebEnginePage::WebWindowType type) override;
    bool acceptNavigationRequest(const QUrl &url, QWebEnginePage::NavigationType type, bool isMainFrame) override;
};

namespace Ui {
class riot_player;
}

class riot_player : public QMainWindow
{
    Q_OBJECT

public:
    explicit riot_player(const char *baseUrl, QWidget *parent = 0);
    ~riot_player();

private slots:
    void on_webEngineView_titleChanged(const QString &title);

    void on_webEngineView_iconChanged(const QIcon &arg1);

    void grantFeaturePermission(const QUrl &q, QWebEnginePage::Feature f);

private:
    Ui::riot_player *ui;
};

#endif // RIOT_PLAYER_H
