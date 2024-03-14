.class public final Lcom/android/launcher3/util/ObjectWrapper;
.super Landroid/os/Binder;
.source "SourceFile"


# instance fields
.field private mObject:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/util/ObjectWrapper;->mObject:Ljava/lang/Object;

    return-void
.end method

.method public static unwrap(Landroid/os/IBinder;)Ljava/lang/Object;
    .locals 1

    instance-of v0, p0, Lcom/android/launcher3/util/ObjectWrapper;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/android/launcher3/util/ObjectWrapper;

    iget-object p0, p0, Lcom/android/launcher3/util/ObjectWrapper;->mObject:Ljava/lang/Object;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
