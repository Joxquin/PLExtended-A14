.class public final LA0/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public d:Landroid/view/View;

.field public e:I

.field public f:LA0/u;

.field public g:LA0/n;

.field public h:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, LA0/u;->e:I

    const/4 v0, 0x0

    iput-object v0, p0, LA0/u;->g:LA0/n;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, LA0/u;->h:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, LA0/u;->g:LA0/n;

    const/4 v1, 0x0

    iput-object v1, p0, LA0/u;->g:LA0/n;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, LA0/n;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
