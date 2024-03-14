.class public final synthetic Lcom/android/launcher3/views/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:Lcom/android/launcher3/views/FloatingIconView;

.field public final synthetic e:Landroid/os/CancellationSignal;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/views/FloatingIconView;Landroid/os/CancellationSignal;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/views/r;->d:Lcom/android/launcher3/views/FloatingIconView;

    iput-object p2, p0, Lcom/android/launcher3/views/r;->e:Landroid/os/CancellationSignal;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/views/r;->d:Lcom/android/launcher3/views/FloatingIconView;

    iget-object p0, p0, Lcom/android/launcher3/views/r;->e:Landroid/os/CancellationSignal;

    invoke-static {v0, p0}, Lcom/android/launcher3/views/FloatingIconView;->a(Lcom/android/launcher3/views/FloatingIconView;Landroid/os/CancellationSignal;)V

    return-void
.end method
