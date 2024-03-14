.class public final synthetic LR0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/util/MainThreadInitializedObject$ObjectProvider;


# virtual methods
.method public final get(Landroid/content/Context;)Ljava/lang/Object;
    .locals 0

    new-instance p0, Lcom/android/launcher3/pm/InstallSessionHelper;

    invoke-direct {p0, p1}, Lcom/android/launcher3/pm/InstallSessionHelper;-><init>(Landroid/content/Context;)V

    return-object p0
.end method
