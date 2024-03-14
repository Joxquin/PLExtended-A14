.class public final synthetic LX0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic d:Lcom/android/launcher3/states/RotationHelper;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/states/RotationHelper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LX0/a;->d:Lcom/android/launcher3/states/RotationHelper;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 0

    iget-object p0, p0, LX0/a;->d:Lcom/android/launcher3/states/RotationHelper;

    invoke-static {p0, p1}, Lcom/android/launcher3/states/RotationHelper;->a(Lcom/android/launcher3/states/RotationHelper;Landroid/os/Message;)V

    const/4 p0, 0x1

    return p0
.end method
