.class public final synthetic LP0/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/util/SettingsCache$OnChangeListener;


# instance fields
.field public final synthetic d:Lcom/android/launcher3/notification/NotificationListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/notification/NotificationListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LP0/c;->d:Lcom/android/launcher3/notification/NotificationListener;

    return-void
.end method


# virtual methods
.method public final onSettingsChanged(Z)V
    .locals 0

    iget-object p0, p0, LP0/c;->d:Lcom/android/launcher3/notification/NotificationListener;

    invoke-static {p0, p1}, Lcom/android/launcher3/notification/NotificationListener;->b(Lcom/android/launcher3/notification/NotificationListener;Z)V

    return-void
.end method
