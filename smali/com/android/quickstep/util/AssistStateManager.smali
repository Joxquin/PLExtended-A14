.class public Lcom/android/quickstep/util/AssistStateManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/util/ResourceBasedOverride;


# static fields
.field public static final INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/android/launcher3/util/MainThreadInitializedObject;

    new-instance v1, Lcom/android/launcher3/util/u;

    const-class v2, Lcom/android/quickstep/util/AssistStateManager;

    const v3, 0x7f13006a

    invoke-direct {v1, v2, v3}, Lcom/android/launcher3/util/u;-><init>(Ljava/lang/Class;I)V

    invoke-direct {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;-><init>(Lcom/android/launcher3/util/MainThreadInitializedObject$ObjectProvider;)V

    sput-object v0, Lcom/android/quickstep/util/AssistStateManager;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 0

    return-void
.end method

.method public isSearchAvailable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSettingsHomeButtonEnabled()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSettingsNavHandleEnabled()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
