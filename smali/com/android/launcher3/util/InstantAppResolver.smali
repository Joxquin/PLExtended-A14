.class public Lcom/android/launcher3/util/InstantAppResolver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/util/ResourceBasedOverride;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newInstance(Landroid/content/Context;)Lcom/android/launcher3/util/InstantAppResolver;
    .locals 2

    const-class v0, Lcom/android/launcher3/util/InstantAppResolver;

    const v1, 0x7f1300f6

    invoke-static {v1, p0, v0}, Lcom/android/launcher3/util/ResourceBasedOverride$Overrides;->getObject(ILandroid/content/Context;Ljava/lang/Class;)Lcom/android/launcher3/util/ResourceBasedOverride;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/util/InstantAppResolver;

    return-object p0
.end method


# virtual methods
.method public isInstantApp(Landroid/content/pm/ApplicationInfo;)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    return p0
.end method

.method public isInstantApp(Lcom/android/launcher3/model/data/AppInfo;)Z
    .locals 0

    .line 2
    const/4 p0, 0x0

    return p0
.end method

.method public isInstantApp(Ljava/lang/String;I)Z
    .locals 0

    .line 3
    const/4 p0, 0x0

    return p0
.end method
