.class public final synthetic Lcom/android/quickstep/d1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic d:Lcom/android/quickstep/SystemUiProxy;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/SystemUiProxy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/d1;->d:Lcom/android/quickstep/SystemUiProxy;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/d1;->d:Lcom/android/quickstep/SystemUiProxy;

    invoke-static {p0, p1}, Lcom/android/quickstep/SystemUiProxy;->a(Lcom/android/quickstep/SystemUiProxy;Landroid/os/Message;)Z

    move-result p0

    return p0
.end method
