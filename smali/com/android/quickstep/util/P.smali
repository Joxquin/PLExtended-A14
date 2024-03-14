.class public final synthetic Lcom/android/quickstep/util/P;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:Lcom/android/quickstep/util/SplitWithKeyboardShortcutController;

.field public final synthetic e:Lcom/android/quickstep/RecentsAnimationCallbacks;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/util/SplitWithKeyboardShortcutController;Lcom/android/quickstep/RecentsAnimationCallbacks;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/util/P;->d:Lcom/android/quickstep/util/SplitWithKeyboardShortcutController;

    iput-object p2, p0, Lcom/android/quickstep/util/P;->e:Lcom/android/quickstep/RecentsAnimationCallbacks;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/util/P;->d:Lcom/android/quickstep/util/SplitWithKeyboardShortcutController;

    iget-object p0, p0, Lcom/android/quickstep/util/P;->e:Lcom/android/quickstep/RecentsAnimationCallbacks;

    invoke-static {v0, p0}, Lcom/android/quickstep/util/SplitWithKeyboardShortcutController;->a(Lcom/android/quickstep/util/SplitWithKeyboardShortcutController;Lcom/android/quickstep/RecentsAnimationCallbacks;)V

    return-void
.end method
