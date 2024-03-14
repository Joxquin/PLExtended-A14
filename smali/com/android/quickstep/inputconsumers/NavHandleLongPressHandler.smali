.class public Lcom/android/quickstep/inputconsumers/NavHandleLongPressHandler;
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

.method public static newInstance(Landroid/content/Context;)Lcom/android/quickstep/inputconsumers/NavHandleLongPressHandler;
    .locals 2

    const-class v0, Lcom/android/quickstep/inputconsumers/NavHandleLongPressHandler;

    const v1, 0x7f130165

    invoke-static {v1, p0, v0}, Lcom/android/launcher3/util/ResourceBasedOverride$Overrides;->getObject(ILandroid/content/Context;Ljava/lang/Class;)Lcom/android/launcher3/util/ResourceBasedOverride;

    move-result-object p0

    check-cast p0, Lcom/android/quickstep/inputconsumers/NavHandleLongPressHandler;

    return-object p0
.end method


# virtual methods
.method public getLongPressRunnable()Ljava/lang/Runnable;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method
