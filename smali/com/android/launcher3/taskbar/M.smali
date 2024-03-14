.class public final synthetic Lcom/android/launcher3/taskbar/M;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/ActivityOptions$OnAnimationFinishedListener;


# instance fields
.field public final synthetic a:Lcom/android/launcher3/util/RunnableList;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/util/RunnableList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/M;->a:Lcom/android/launcher3/util/RunnableList;

    return-void
.end method


# virtual methods
.method public final onAnimationFinished(J)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/M;->a:Lcom/android/launcher3/util/RunnableList;

    invoke-virtual {p0}, Lcom/android/launcher3/util/RunnableList;->executeAllAndDestroy()V

    return-void
.end method
