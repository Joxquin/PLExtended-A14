.class public final Lw1/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx1/c;


# instance fields
.field public final d:Landroid/hardware/display/DisplayManager;

.field public final e:Landroid/content/Context;

.field public final f:Landroid/os/Handler;

.field public final g:Ljava/util/List;

.field public final h:Lw1/a;

.field public i:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Landroid/hardware/display/DisplayManager;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1

    const-string v0, "displayManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mainHandler"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw1/d;->d:Landroid/hardware/display/DisplayManager;

    iput-object p2, p0, Lw1/d;->e:Landroid/content/Context;

    iput-object p3, p0, Lw1/d;->f:Landroid/os/Handler;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lw1/d;->g:Ljava/util/List;

    new-instance p1, Lw1/a;

    invoke-direct {p1, p0}, Lw1/a;-><init>(Lw1/d;)V

    iput-object p1, p0, Lw1/d;->h:Lw1/a;

    return-void
.end method
