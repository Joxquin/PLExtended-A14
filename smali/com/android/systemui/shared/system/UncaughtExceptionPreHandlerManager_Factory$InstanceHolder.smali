.class final Lcom/android/systemui/shared/system/UncaughtExceptionPreHandlerManager_Factory$InstanceHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final INSTANCE:Lcom/android/systemui/shared/system/UncaughtExceptionPreHandlerManager_Factory;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/shared/system/UncaughtExceptionPreHandlerManager_Factory;

    invoke-direct {v0}, Lcom/android/systemui/shared/system/UncaughtExceptionPreHandlerManager_Factory;-><init>()V

    sput-object v0, Lcom/android/systemui/shared/system/UncaughtExceptionPreHandlerManager_Factory$InstanceHolder;->INSTANCE:Lcom/android/systemui/shared/system/UncaughtExceptionPreHandlerManager_Factory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bridge synthetic a()Lcom/android/systemui/shared/system/UncaughtExceptionPreHandlerManager_Factory;
    .locals 1

    sget-object v0, Lcom/android/systemui/shared/system/UncaughtExceptionPreHandlerManager_Factory$InstanceHolder;->INSTANCE:Lcom/android/systemui/shared/system/UncaughtExceptionPreHandlerManager_Factory;

    return-object v0
.end method
