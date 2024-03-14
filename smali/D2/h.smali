.class public final LD2/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static b:LD2/h;


# instance fields
.field public final a:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, LD2/h;->a:Ljava/lang/Object;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, LD2/f;

    invoke-direct {v2, p0}, LD2/f;-><init>(LD2/h;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    return-void
.end method

.method public static a()LD2/h;
    .locals 1

    sget-object v0, LD2/h;->b:LD2/h;

    if-nez v0, :cond_0

    new-instance v0, LD2/h;

    invoke-direct {v0}, LD2/h;-><init>()V

    sput-object v0, LD2/h;->b:LD2/h;

    :cond_0
    sget-object v0, LD2/h;->b:LD2/h;

    return-object v0
.end method
