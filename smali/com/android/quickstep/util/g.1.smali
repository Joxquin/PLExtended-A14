.class public final synthetic Lcom/android/quickstep/util/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:Lcom/android/quickstep/util/AssistContentRequester$Callback;

.field public final synthetic e:Landroid/app/assist/AssistContent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/util/AssistContentRequester$Callback;Landroid/app/assist/AssistContent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/util/g;->d:Lcom/android/quickstep/util/AssistContentRequester$Callback;

    iput-object p2, p0, Lcom/android/quickstep/util/g;->e:Landroid/app/assist/AssistContent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/util/g;->d:Lcom/android/quickstep/util/AssistContentRequester$Callback;

    iget-object p0, p0, Lcom/android/quickstep/util/g;->e:Landroid/app/assist/AssistContent;

    invoke-static {v0, p0}, Lcom/android/quickstep/util/AssistContentRequester$AssistDataReceiver;->a(Lcom/android/quickstep/util/AssistContentRequester$Callback;Landroid/app/assist/AssistContent;)V

    return-void
.end method
