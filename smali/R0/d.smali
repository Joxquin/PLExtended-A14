.class public final synthetic LR0/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/util/MainThreadInitializedObject$ObjectProvider;


# virtual methods
.method public final get(Landroid/content/Context;)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Lcom/android/launcher3/pm/UserCache;->c(Landroid/content/Context;)Lcom/android/launcher3/pm/UserCache;

    move-result-object p0

    return-object p0
.end method
