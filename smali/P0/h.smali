.class public final synthetic LP0/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/launcher3/notification/NotificationKeyData;

    sget p0, Lcom/android/launcher3/notification/NotificationListener;->d:I

    iget-object p0, p1, Lcom/android/launcher3/notification/NotificationKeyData;->notificationKey:Ljava/lang/String;

    return-object p0
.end method
