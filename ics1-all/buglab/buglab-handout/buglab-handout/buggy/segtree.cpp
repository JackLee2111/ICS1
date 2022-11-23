#include <cstdio>
#include <cstring>
#include <cstdlib>
#include <iostream>
#include <algorithm>

const int MAXN = 1e5 + 10;

struct Node
{
	long long int l;
	long long int r;
	long long int add;
	long long int sum;
	long long int size;
	Node *lch;
	Node *rch;
	~Node();
	Node(long long int, long long int);
	void Maintain();
	void PushDown();
	long long int Query(const long long int &, const long long int &);
	void Add(const long long int &, const long long int &, const long long int &);
};

int data[MAXN];

int main()
{
	int n, q;
	scanf("%d%d", &n, &q);
	for (int i = 1; i <= n; i++)
		scanf("%d", data + i);
	Node *N = new Node(1, n);
	int t, l, r, d;
	for (int i = 0; i < q; i++)
	{
		scanf("%d", &t);
		if (t == 1)
		{
			scanf("%d%d%d", &l, &r, &d);
			N->Add(l, r, d);
		}
		else if (t == 2)
		{
			scanf("%d%d", &l, &r);
			printf("%lld\n", N->Query(l, r));
		}
	}
	delete N;
	return 0;
}

Node::Node(long long int l, long long int r)
{
	this->l = l;
	this->r = r;
	this->add = 0;
	this->size = r - l + 1;
	if (l == r)
		this->sum = data[r];
	else
	{
		int mid = (l + r) >> 1;
		this->lch = new Node(l, mid);
		this->rch = new Node(mid + 1, r);
		this->Maintain();
	}
}

Node::~Node()
{
	if (this->lch != nullptr)
		delete this->lch;
	if (this->rch != nullptr)
		delete this->rch;
}

void Node::Add(const long long int &l, const long long int &r, const long long int &d)
{
	if (l <= this->l && this->r <= r)
	{
		this->add += d;
		this->sum += d * this->size;
	}
	else
	{
		this->PushDown();
		if (l <= this->lch->r)
			this->lch->Add(l, r, d);
		if (this->rch->l <= r)
			this->rch->Add(l, r, d);
		this->Maintain();
	}
}

long long int Node::Query(const long long int &l, const long long int &r)
{
	if (l <= this->l && this->r <= r)
		return this->sum;
	else
	{
		this->PushDown();
		if (r <= this->lch->r)
			return this->lch->Query(l, r);
		if (this->rch->l <= l)
			return this->rch->Query(l, r);
		return this->lch->Query(l, r) + this->rch->Query(l, r);
	}
}

inline void Node::Maintain()
{
	this->sum = this->lch->sum + this->rch->sum;
}

inline void Node::PushDown()
{
	if (this->add)
	{
		this->lch->add += this->add;
		this->rch->add += this->add;
		this->lch->sum += this->add * this->lch->size;
		this->rch->sum += this->add * this->rch->size;
		this->add = 0;
	}
}
