.class public final synthetic Lcom/android/launcher3/popup/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Lcom/android/launcher3/model/data/ItemInfo;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/popup/n;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/launcher3/popup/n;->b:Lcom/android/launcher3/model/data/ItemInfo;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/popup/n;->a:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/launcher3/popup/n;->b:Lcom/android/launcher3/model/data/ItemInfo;

    check-cast p1, Landroid/service/notification/StatusBarNotification;

    new-instance v1, Lcom/android/launcher3/notification/NotificationInfo;

    invoke-direct {v1, v0, p1, p0}, Lcom/android/launcher3/notification/NotificationInfo;-><init>(Landroid/content/Context;Landroid/service/notification/StatusBarNotification;Lcom/android/launcher3/model/data/ItemInfo;)V

    return-object v1
.end method
