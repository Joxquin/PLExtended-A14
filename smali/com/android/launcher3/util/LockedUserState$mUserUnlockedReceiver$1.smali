.class final Lcom/android/launcher3/util/LockedUserState$mUserUnlockedReceiver$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/util/LockedUserState;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/util/LockedUserState;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/util/LockedUserState$mUserUnlockedReceiver$1;->this$0:Lcom/android/launcher3/util/LockedUserState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/launcher3/util/LockedUserState$mUserUnlockedReceiver$1;->this$0:Lcom/android/launcher3/util/LockedUserState;

    invoke-static {p1}, Lcom/android/launcher3/util/LockedUserState;->access$setUserUnlocked$p(Lcom/android/launcher3/util/LockedUserState;)V

    iget-object p0, p0, Lcom/android/launcher3/util/LockedUserState$mUserUnlockedReceiver$1;->this$0:Lcom/android/launcher3/util/LockedUserState;

    invoke-static {p0}, Lcom/android/launcher3/util/LockedUserState;->access$notifyUserUnlocked(Lcom/android/launcher3/util/LockedUserState;)V

    :cond_0
    return-void
.end method
