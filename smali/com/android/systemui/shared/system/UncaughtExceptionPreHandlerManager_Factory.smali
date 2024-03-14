.class public final Lcom/android/systemui/shared/system/UncaughtExceptionPreHandlerManager_Factory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld3/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/android/systemui/shared/system/UncaughtExceptionPreHandlerManager_Factory;
    .locals 1

    invoke-static {}, Lcom/android/systemui/shared/system/UncaughtExceptionPreHandlerManager_Factory$InstanceHolder;->a()Lcom/android/systemui/shared/system/UncaughtExceptionPreHandlerManager_Factory;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance()Lcom/android/systemui/shared/system/UncaughtExceptionPreHandlerManager;
    .locals 1

    new-instance v0, Lcom/android/systemui/shared/system/UncaughtExceptionPreHandlerManager;

    invoke-direct {v0}, Lcom/android/systemui/shared/system/UncaughtExceptionPreHandlerManager;-><init>()V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/systemui/shared/system/UncaughtExceptionPreHandlerManager;
    .locals 0

    .line 2
    invoke-static {}, Lcom/android/systemui/shared/system/UncaughtExceptionPreHandlerManager_Factory;->newInstance()Lcom/android/systemui/shared/system/UncaughtExceptionPreHandlerManager;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/shared/system/UncaughtExceptionPreHandlerManager_Factory;->get()Lcom/android/systemui/shared/system/UncaughtExceptionPreHandlerManager;

    move-result-object p0

    return-object p0
.end method
