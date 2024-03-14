.class public final Lcom/android/launcher3/notification/NotificationGroup;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mChildKeys:Ljava/util/Set;

.field private mGroupSummaryKey:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/notification/NotificationGroup;->mChildKeys:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final addChildKey(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/notification/NotificationGroup;->mChildKeys:Ljava/util/Set;

    check-cast p0, Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final getGroupSummaryKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/notification/NotificationGroup;->mGroupSummaryKey:Ljava/lang/String;

    return-object p0
.end method

.method public final isEmpty()Z
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/notification/NotificationGroup;->mChildKeys:Ljava/util/Set;

    check-cast p0, Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public final removeChildKey(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/notification/NotificationGroup;->mChildKeys:Ljava/util/Set;

    check-cast p0, Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final setGroupSummaryKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/notification/NotificationGroup;->mGroupSummaryKey:Ljava/lang/String;

    return-void
.end method
