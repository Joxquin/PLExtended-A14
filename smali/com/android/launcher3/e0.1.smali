.class public final synthetic Lcom/android/launcher3/e0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Lcom/android/launcher3/LauncherModel;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/LauncherModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/e0;->a:Lcom/android/launcher3/LauncherModel;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/e0;->a:Lcom/android/launcher3/LauncherModel;

    check-cast p1, Landroid/os/UserHandle;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p2, p1}, Lcom/android/launcher3/LauncherModel;->onUserEvent(Ljava/lang/String;Landroid/os/UserHandle;)V

    return-void
.end method
