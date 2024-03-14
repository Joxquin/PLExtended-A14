.class public final synthetic Lcom/android/quickstep/util/Q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lcom/android/quickstep/views/FloatingTaskView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/views/FloatingTaskView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/util/Q;->a:Lcom/android/quickstep/views/FloatingTaskView;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/util/Q;->a:Lcom/android/quickstep/views/FloatingTaskView;

    check-cast p1, Lcom/android/systemui/shared/recents/model/Task;

    invoke-static {p0, p1}, Lcom/android/quickstep/util/SplitWithKeyboardShortcutController$SplitWithKeyboardShortcutRecentsAnimationListener;->a(Lcom/android/quickstep/views/FloatingTaskView;Lcom/android/systemui/shared/recents/model/Task;)V

    return-void
.end method
