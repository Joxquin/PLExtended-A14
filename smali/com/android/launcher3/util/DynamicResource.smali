.class public final Lcom/android/launcher3/util/DynamicResource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln1/m;
.implements Ln1/k;


# static fields
.field private static final INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mPlugin:Ln1/m;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/launcher3/util/MainThreadInitializedObject;

    new-instance v1, Lcom/android/launcher3/util/f;

    invoke-direct {v1}, Lcom/android/launcher3/util/f;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;-><init>(Lcom/android/launcher3/util/MainThreadInitializedObject$ObjectProvider;)V

    sput-object v0, Lcom/android/launcher3/util/DynamicResource;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/util/DynamicResource;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/android/launcher3/uioverrides/plugins/PluginManagerWrapper;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/uioverrides/plugins/PluginManagerWrapper;

    const-class v0, Ln1/m;

    const/4 v1, 0x0

    invoke-virtual {p1, p0, v0, v1}, Lcom/android/launcher3/uioverrides/plugins/PluginManagerWrapper;->addPluginListener(Ln1/k;Ljava/lang/Class;Z)V

    return-void
.end method

.method public static provider(Landroid/content/Context;)Ln1/m;
    .locals 1

    sget-object v0, Lcom/android/launcher3/util/DynamicResource;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/util/DynamicResource;

    iget-object v0, p0, Lcom/android/launcher3/util/DynamicResource;->mPlugin:Ln1/m;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static synthetic q(Landroid/content/Context;)Lcom/android/launcher3/util/DynamicResource;
    .locals 1

    new-instance v0, Lcom/android/launcher3/util/DynamicResource;

    invoke-direct {v0, p0}, Lcom/android/launcher3/util/DynamicResource;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public final getDimension(I)F
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/util/DynamicResource;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    return p0
.end method

.method public final getFloat(I)F
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/util/DynamicResource;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result p0

    return p0
.end method

.method public final onPluginConnected(Ln1/j;Landroid/content/Context;)V
    .locals 0

    check-cast p1, Ln1/m;

    iput-object p1, p0, Lcom/android/launcher3/util/DynamicResource;->mPlugin:Ln1/m;

    return-void
.end method

.method public final onPluginDisconnected(Ln1/j;)V
    .locals 0

    check-cast p1, Ln1/m;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/launcher3/util/DynamicResource;->mPlugin:Ln1/m;

    return-void
.end method
