.class public abstract Landroid/os/UEventObserver;
.super Ljava/lang/Object;
.source "UEventObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/UEventObserver$UEventThread;,
        Landroid/os/UEventObserver$UEvent;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "UEventObserver"

.field private static sThread:Landroid/os/UEventObserver$UEventThread;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()V
    .locals 0

    invoke-static {}, Landroid/os/UEventObserver;->nativeSetup()V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    invoke-static {}, Landroid/os/UEventObserver;->nativeWaitForNextEvent()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Ljava/lang/String;)V
    .locals 0
    .param p0    # Ljava/lang/String;

    invoke-static {p0}, Landroid/os/UEventObserver;->nativeAddMatch(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Ljava/lang/String;)V
    .locals 0
    .param p0    # Ljava/lang/String;

    invoke-static {p0}, Landroid/os/UEventObserver;->nativeRemoveMatch(Ljava/lang/String;)V

    return-void
.end method

.method private static getThread()Landroid/os/UEventObserver$UEventThread;
    .locals 2

    const-class v1, Landroid/os/UEventObserver;

    monitor-enter v1

    :try_start_0
    sget-object v0, Landroid/os/UEventObserver;->sThread:Landroid/os/UEventObserver$UEventThread;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/UEventObserver$UEventThread;

    invoke-direct {v0}, Landroid/os/UEventObserver$UEventThread;-><init>()V

    sput-object v0, Landroid/os/UEventObserver;->sThread:Landroid/os/UEventObserver$UEventThread;

    sget-object v0, Landroid/os/UEventObserver;->sThread:Landroid/os/UEventObserver$UEventThread;

    invoke-virtual {v0}, Landroid/os/UEventObserver$UEventThread;->start()V

    :cond_0
    sget-object v0, Landroid/os/UEventObserver;->sThread:Landroid/os/UEventObserver$UEventThread;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static native nativeAddMatch(Ljava/lang/String;)V
.end method

.method private static native nativeRemoveMatch(Ljava/lang/String;)V
.end method

.method private static native nativeSetup()V
.end method

.method private static native nativeWaitForNextEvent()Ljava/lang/String;
.end method

.method private static peekThread()Landroid/os/UEventObserver$UEventThread;
    .locals 2

    const-class v1, Landroid/os/UEventObserver;

    monitor-enter v1

    :try_start_0
    sget-object v0, Landroid/os/UEventObserver;->sThread:Landroid/os/UEventObserver$UEventThread;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Landroid/os/UEventObserver;->stopObserving()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public abstract onUEvent(Landroid/os/UEventObserver$UEvent;)V
.end method

.method public final startObserving(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "match substring must be non-empty"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-static {}, Landroid/os/UEventObserver;->getThread()Landroid/os/UEventObserver$UEventThread;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Landroid/os/UEventObserver$UEventThread;->addObserver(Ljava/lang/String;Landroid/os/UEventObserver;)V

    return-void
.end method

.method public final stopObserving()V
    .locals 1

    invoke-static {}, Landroid/os/UEventObserver;->getThread()Landroid/os/UEventObserver$UEventThread;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/os/UEventObserver$UEventThread;->removeObserver(Landroid/os/UEventObserver;)V

    :cond_0
    return-void
.end method
