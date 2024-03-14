.class public Lcom/android/quickstep/util/AssistUtils;
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

.method public static newInstance(Landroid/content/Context;)Lcom/android/quickstep/util/AssistUtils;
    .locals 2

    const-class v0, Lcom/android/quickstep/util/AssistUtils;

    const v1, 0x7f13006b

    invoke-static {v1, p0, v0}, Lcom/android/launcher3/util/ResourceBasedOverride$Overrides;->getObject(ILandroid/content/Context;Ljava/lang/Class;)Lcom/android/launcher3/util/ResourceBasedOverride;

    move-result-object p0

    check-cast p0, Lcom/android/quickstep/util/AssistUtils;

    return-object p0
.end method


# virtual methods
.method public getSysUiAssistOverrideInvocationTypes()[I
    .locals 0

    const/4 p0, 0x0

    new-array p0, p0, [I

    return-object p0
.end method

.method public tryStartAssistOverride(I)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
