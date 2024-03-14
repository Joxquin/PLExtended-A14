.class public final synthetic Lcom/android/quickstep/util/M;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:Lcom/android/quickstep/util/SplitSelectStateController$SplitFromDesktopController$1;

.field public final synthetic e:Landroid/app/ActivityManager$RunningTaskInfo;

.field public final synthetic f:I

.field public final synthetic g:Landroid/graphics/Rect;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/util/SplitSelectStateController$SplitFromDesktopController$1;Landroid/app/ActivityManager$RunningTaskInfo;ILandroid/graphics/Rect;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/util/M;->d:Lcom/android/quickstep/util/SplitSelectStateController$SplitFromDesktopController$1;

    iput-object p2, p0, Lcom/android/quickstep/util/M;->e:Landroid/app/ActivityManager$RunningTaskInfo;

    iput p3, p0, Lcom/android/quickstep/util/M;->f:I

    iput-object p4, p0, Lcom/android/quickstep/util/M;->g:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/quickstep/util/M;->d:Lcom/android/quickstep/util/SplitSelectStateController$SplitFromDesktopController$1;

    iget-object v1, p0, Lcom/android/quickstep/util/M;->e:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v2, p0, Lcom/android/quickstep/util/M;->f:I

    iget-object p0, p0, Lcom/android/quickstep/util/M;->g:Landroid/graphics/Rect;

    invoke-static {v0, v1, v2, p0}, Lcom/android/quickstep/util/SplitSelectStateController$SplitFromDesktopController$1;->a(Lcom/android/quickstep/util/SplitSelectStateController$SplitFromDesktopController$1;Landroid/app/ActivityManager$RunningTaskInfo;ILandroid/graphics/Rect;)V

    return-void
.end method
