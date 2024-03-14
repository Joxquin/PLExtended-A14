.class public final synthetic Lcom/google/android/apps/nexuslauncher/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Landroid/content/SharedPreferences;

    new-instance p0, Lh2/f;

    const-string v0, "pref_enable_minus_one"

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    or-int/lit8 p1, p1, 0x2

    or-int/lit8 p1, p1, 0x4

    or-int/lit8 p1, p1, 0x8

    invoke-direct {p0, p1}, Lh2/f;-><init>(I)V

    return-object p0
.end method
