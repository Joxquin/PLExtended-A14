.class public final synthetic Lcom/android/launcher3/views/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:Lcom/android/launcher3/views/FloatingSurfaceView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/views/FloatingSurfaceView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/views/s;->d:Lcom/android/launcher3/views/FloatingSurfaceView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/views/s;->d:Lcom/android/launcher3/views/FloatingSurfaceView;

    invoke-static {p0}, Lcom/android/launcher3/views/FloatingSurfaceView;->a(Lcom/android/launcher3/views/FloatingSurfaceView;)V

    return-void
.end method
