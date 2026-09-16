#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include "backend.h"

static QObject *GetBackend(QQmlEngine *engine , QJSEngine *scriptEngine)
{
    Q_UNUSED(engine);
    Q_UNUSED(scriptEngine);

    return Backend::instance();
}

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    QObject::connect(
        &engine,
        &QQmlApplicationEngine::objectCreationFailed,
        &app,
        []() { QCoreApplication::exit(-1); },
        Qt::QueuedConnection);
    qmlRegisterSingletonType<Backend>("My.Backend" , 1 , 0 , "Backend" , GetBackend);
    engine.rootContext()->setContextProperty("Backend2" , new Backend2);
    engine.loadFromModule("Practice01", "Main");

    return QGuiApplication::exec();
}
