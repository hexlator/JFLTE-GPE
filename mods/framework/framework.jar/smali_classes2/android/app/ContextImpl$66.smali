.class final Landroid/app/ContextImpl$66;
.super Landroid/app/ContextImpl$ServiceFetcher;
.source "ContextImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ContextImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/ContextImpl$ServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .locals 1
    .param p1    # Landroid/app/ContextImpl;

    new-instance v0, Landroid/media/projection/MediaProjectionManager;

    invoke-direct {v0, p1}, Landroid/media/projection/MediaProjectionManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
