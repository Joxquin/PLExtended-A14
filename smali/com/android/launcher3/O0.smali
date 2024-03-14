.class public final synthetic Lcom/android/launcher3/O0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:Lcom/android/launcher3/Workspace;

.field public final synthetic e:Z

.field public final synthetic f:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/Workspace;ZLjava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/O0;->d:Lcom/android/launcher3/Workspace;

    iput-boolean p2, p0, Lcom/android/launcher3/O0;->e:Z

    iput-object p3, p0, Lcom/android/launcher3/O0;->f:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/O0;->d:Lcom/android/launcher3/Workspace;

    iget-boolean v1, p0, Lcom/android/launcher3/O0;->e:Z

    iget-object p0, p0, Lcom/android/launcher3/O0;->f:Ljava/lang/Runnable;

    sget v2, Lcom/android/launcher3/Workspace;->d:I

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, p0}, Lcom/android/launcher3/Workspace;->removeExtraEmptyScreenDelayed(IZLjava/lang/Runnable;)V

    return-void
.end method
