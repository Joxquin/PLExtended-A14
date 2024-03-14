.class public Lcom/android/launcher3/icons/ComponentWithLabel$ComponentCachingLogic;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/icons/cache/CachingLogic;


# instance fields
.field private final mAddToMemCache:Z

.field private final mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/icons/ComponentWithLabel$ComponentCachingLogic;->mPackageManager:Landroid/content/pm/PackageManager;

    iput-boolean p2, p0, Lcom/android/launcher3/icons/ComponentWithLabel$ComponentCachingLogic;->mAddToMemCache:Z

    return-void
.end method


# virtual methods
.method public final addToMemCache()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/launcher3/icons/ComponentWithLabel$ComponentCachingLogic;->mAddToMemCache:Z

    return p0
.end method

.method public final getComponent(Ljava/lang/Object;)Landroid/content/ComponentName;
    .locals 0

    check-cast p1, Lcom/android/launcher3/icons/ComponentWithLabel;

    invoke-interface {p1}, Lcom/android/launcher3/icons/ComponentWithLabel;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method public final getLabel(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 0

    check-cast p1, Lcom/android/launcher3/icons/ComponentWithLabel;

    iget-object p0, p0, Lcom/android/launcher3/icons/ComponentWithLabel$ComponentCachingLogic;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-interface {p1, p0}, Lcom/android/launcher3/icons/ComponentWithLabel;->getLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public final getUser(Ljava/lang/Object;)Landroid/os/UserHandle;
    .locals 0

    check-cast p1, Lcom/android/launcher3/icons/ComponentWithLabel;

    invoke-interface {p1}, Lcom/android/launcher3/icons/ComponentWithLabel;->getUser()Landroid/os/UserHandle;

    move-result-object p0

    return-object p0
.end method

.method public loadIcon(Landroid/content/Context;Lcom/android/launcher3/icons/ComponentWithLabel;)Lcom/android/launcher3/icons/BitmapInfo;
    .locals 0

    .line 2
    sget-object p0, Lcom/android/launcher3/icons/BitmapInfo;->LOW_RES_INFO:Lcom/android/launcher3/icons/BitmapInfo;

    return-object p0
.end method

.method public bridge synthetic loadIcon(Landroid/content/Context;Ljava/lang/Object;)Lcom/android/launcher3/icons/BitmapInfo;
    .locals 0

    .line 1
    check-cast p2, Lcom/android/launcher3/icons/ComponentWithLabel;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/icons/ComponentWithLabel$ComponentCachingLogic;->loadIcon(Landroid/content/Context;Lcom/android/launcher3/icons/ComponentWithLabel;)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object p0

    return-object p0
.end method
