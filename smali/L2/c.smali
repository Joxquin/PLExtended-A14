.class public final LL2/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:LL2/h;

.field public i:Ls1/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, LL2/c;->b:I

    return-void
.end method


# virtual methods
.method public final a()LL2/d;
    .locals 1

    new-instance v0, LL2/d;

    invoke-direct {v0, p0}, LL2/d;-><init>(LL2/c;)V

    return-object v0
.end method
