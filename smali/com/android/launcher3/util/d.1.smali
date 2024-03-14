.class public final synthetic Lcom/android/launcher3/util/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/util/MainThreadInitializedObject$ObjectProvider;


# virtual methods
.method public final get(Landroid/content/Context;)Ljava/lang/Object;
    .locals 0

    new-instance p0, Lcom/android/launcher3/util/DisplayController;

    invoke-direct {p0, p1}, Lcom/android/launcher3/util/DisplayController;-><init>(Landroid/content/Context;)V

    return-object p0
.end method
