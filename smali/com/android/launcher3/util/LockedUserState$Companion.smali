.class public final Lcom/android/launcher3/util/LockedUserState$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static get(Landroid/content/Context;)Lcom/android/launcher3/util/LockedUserState;
    .locals 1

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/util/LockedUserState;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "INSTANCE.get(context)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/android/launcher3/util/LockedUserState;

    return-object p0
.end method

.method public static synthetic getINSTANCE$annotations()V
    .locals 0

    return-void
.end method
