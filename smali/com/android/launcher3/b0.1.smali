.class public final synthetic Lcom/android/launcher3/b0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/util/MainThreadInitializedObject$ObjectProvider;


# virtual methods
.method public final get(Landroid/content/Context;)Ljava/lang/Object;
    .locals 0

    new-instance p0, Lcom/android/launcher3/LauncherAppState;

    invoke-direct {p0, p1}, Lcom/android/launcher3/LauncherAppState;-><init>(Landroid/content/Context;)V

    return-object p0
.end method
